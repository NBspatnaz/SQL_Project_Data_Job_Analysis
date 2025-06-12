--what are the skills that required for these top paying jobs

WITH top_jobs AS (SELECT
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

LIMIT 10)

SELECT
    top_jobs.*,
    skill.skills AS required_skill

FROM top_jobs
INNER JOIN skills_job_dim AS skills_job ON
top_jobs.job_id = skills_job.job_id
INNER JOIN skills_dim AS skill ON
skills_job.skill_id = skill.skill_id
ORDER BY
    top_jobs.salary_year_avg DESC;



/*
[
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "sql"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "python"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "r"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "azure"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "databricks"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "aws"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "pandas"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "pyspark"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "jupyter"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "excel"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "tableau"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "power bi"
  },
  {
    "job_id": 552322,
    "company_name": "AT&T",
    "job_title": "Associate Director- Data Insights",
    "job_location": "Anywhere",
    "salary_year_avg": "255829.5",
    "job_schedule_type": "Full-time",
    "required_skill": "powerpoint"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "salary_year_avg": "232423.0",
    "job_schedule_type": "Full-time",
    "required_skill": "sql"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "salary_year_avg": "232423.0",
    "job_schedule_type": "Full-time",
    "required_skill": "python"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "salary_year_avg": "232423.0",
    "job_schedule_type": "Full-time",
    "required_skill": "r"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "salary_year_avg": "232423.0",
    "job_schedule_type": "Full-time",
    "required_skill": "hadoop"
  },
  {
    "job_id": 99305,
    "company_name": "Pinterest Job Advertisements",
    "job_title": "Data Analyst, Marketing",
    "job_location": "Anywhere",
    "salary_year_avg": "232423.0",
    "job_schedule_type": "Full-time",
    "required_skill": "tableau"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "217000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "sql"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "217000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "crystal"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "217000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "oracle"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "217000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "tableau"
  },
  {
    "job_id": 1021647,
    "company_name": "Uclahealthcareers",
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "217000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "flow"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "sql"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "python"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "go"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "snowflake"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "pandas"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "numpy"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "excel"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "tableau"
  },
  {
    "job_id": 168310,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst (Remote)",
    "job_location": "Anywhere",
    "salary_year_avg": "205000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "gitlab"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "sql"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "python"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "azure"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "aws"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "oracle"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "snowflake"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "tableau"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "power bi"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "sap"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "jenkins"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "bitbucket"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "atlassian"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "jira"
  },
  {
    "job_id": 731368,
    "company_name": "Inclusively",
    "job_title": "Director, Data Analyst - HYBRID",
    "job_location": "Anywhere",
    "salary_year_avg": "189309.0",
    "job_schedule_type": "Full-time",
    "required_skill": "confluence"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "sql"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "python"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "r"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "git"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "bitbucket"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "atlassian"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "jira"
  },
  {
    "job_id": 310660,
    "company_name": "Motional",
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_location": "Anywhere",
    "salary_year_avg": "189000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "confluence"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "sql"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "python"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "go"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "snowflake"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "pandas"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "numpy"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "excel"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "tableau"
  },
  {
    "job_id": 1749593,
    "company_name": "SmartAsset",
    "job_title": "Principal Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "186000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "gitlab"
  },
  {
    "job_id": 387860,
    "company_name": "Get It Recruit - Information Technology",
    "job_title": "ERM Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "184000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "sql"
  },
  {
    "job_id": 387860,
    "company_name": "Get It Recruit - Information Technology",
    "job_title": "ERM Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "184000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "python"
  },
  {
    "job_id": 387860,
    "company_name": "Get It Recruit - Information Technology",
    "job_title": "ERM Data Analyst",
    "job_location": "Anywhere",
    "salary_year_avg": "184000.0",
    "job_schedule_type": "Full-time",
    "required_skill": "r"
  }
]
*/

