-- Select the total number of students who were in the first 3 cohorts.

SELECT COUNT(*) 
FROM students 
WHERE cohort_id between 1 AND 3;