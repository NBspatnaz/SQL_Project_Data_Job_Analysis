/* what are the most in-demand skills for Data Analyst */
WITH job AS (SELECT
    *

FROM job_postings_fact

WHERE job_title_short LIKE '%Data Analyst%'
AND job_title_short NOT LIKE '%Senior%')

SELECT
    skills_job.skill_id,
    skills_dim.skills AS name,
    job.job_title_short,
    COUNT(skills_job.job_id) AS demand_count
FROM skills_job_dim AS skills_job
INNER JOIN job ON skills_job.job_id = job.job_id
INNER JOIN skills_dim ON skills_job.skill_id = skills_dim.skill_id
GROUP BY
    skills_job.skill_id,
    skills_dim.skills,
    job.job_title_short
ORDER BY
    demand_count DESC

LIMIT 5;



