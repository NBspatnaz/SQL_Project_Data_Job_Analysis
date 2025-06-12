-- what are the top 10 paying data analyst jobs

SELECT
    job_id,
    company.name AS company_name,
    job_title,
    job_location,
    salary_year_avg,
    job_schedule_type
FROM job_postings_fact
LEFT JOIN company_dim AS company ON 
job_postings_fact.company_id = company.company_id
WHERE job_title_short = 'Data Analyst'
AND salary_year_avg IS NOT NULL
AND job_location = 'Anywhere'

ORDER BY
    salary_year_avg DESC

LIMIT 10;
