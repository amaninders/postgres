-- Get all cohorts with 18 or more students.

SELECT cohorts.name, COUNT(students.*) AS "Total Students"
FROM cohorts
LEFT JOIN students
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY "Total Students";