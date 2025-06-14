/* what are the top skills based on slary for the data analyst role */

WITH job AS (SELECT
    job_id,
    job_title_short,
    salary_year_avg

FROM job_postings_fact

WHERE job_title_short = 'Data Analyst'
AND salary_year_avg IS NOT NULL
AND job_work_from_home = 'Yes'

ORDER BY
    salary_year_avg DESC)

SELECT
    skills_job.skill_id,
    skills_dim.skills AS skills_name,
    job.job_title_short,
    ROUND (AVG(job.salary_year_avg),2) AS average_salary
FROM skills_job_dim AS skills_job
INNER JOIN job ON skills_job.job_id = job.job_id
INNER JOIN skills_dim ON skills_job.skill_id = skills_dim.skill_id
GROUP BY
    skills_job.skill_id,
    skills_dim.skills,
    job.job_title_short
ORDER BY
    average_salary DESC

LIMIT 25;


SELECT
    skills,
    ROUND (AVG(jobs.salary_year_avg),2) AS average_salary
    FROM skills_dim
    INNER JOIN skills_job_dim AS skills_job ON skills_dim.skill_id = skills_job.skill_id
    INNER JOIN job_postings_fact AS jobs ON skills_job.job_id = jobs.job_id
    WHERE jobs.job_title_short = 'Data Analyst' 
    AND jobs.salary_year_avg IS NOT NULL
    AND job_work_from_home = 'Yes'
    GROUP BY
    skills_dim.skills
ORDER BY
    average_salary DESC
LIMIT 25;