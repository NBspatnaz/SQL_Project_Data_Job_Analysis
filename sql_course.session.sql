SELECT
    skills_name.skills,
    COUNT(skills_job.job_id) AS numbers_of_jobs_postings,
    AVG(jobs.salary_year_avg) AS average_salary

FROM skills_dim AS skills_name
LEFT JOIN skills_job_dim AS skills_job
    ON skills_name.skill_id = skills_job.skill_id
LEFT JOIN job_postings_fact AS jobs
    ON skills_job.job_id = jobs.job_id
GROUP BY skills_name.skills
ORDER BY
    skills_name.skills ASC;