CREATE TABLE April_job AS
SELECT
    *
FROM job_postings_fact
   WHERE EXTRACT(MONTH FROM job_posted_date)= 4 

DROP TABLE April_job

CREATE TABLE may_job AS
SELECT
    * 
FROM job_postings_fact
   WHERE EXTRACT(MONTH FROM job_posted_date)= 5