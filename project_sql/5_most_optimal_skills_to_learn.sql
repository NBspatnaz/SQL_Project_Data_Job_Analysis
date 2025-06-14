/* what is the most optimal skills to learn for the data analyst role */
WITH job AS (
    SELECT
        job_id,
        job_title_short,
        salary_year_avg
    FROM job_postings_fact
    WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = 'Yes'
)

SELECT
    skills_job.skill_id,
    skills_dim.skills AS skills_name,
    COUNT(skills_job.job_id) AS demand_count,
    ROUND (AVG(job.salary_year_avg),2) AS average_salary
FROM skills_job_dim AS skills_job
INNER JOIN job ON skills_job.job_id = job.job_id
INNER JOIN skills_dim ON skills_job.skill_id = skills_dim.skill_id
GROUP BY
    skills_job.skill_id,
    skills_dim.skills
HAVING
    COUNT(skills_job.job_id) > 10
ORDER BY
    
    demand_count DESC,
    average_salary DESC
    
LIMIT 25;