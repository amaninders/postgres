-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

SELECT DISTINCT(teachers.name), cohorts.name, COUNT(assistance_requests.*)
FROM assistance_requests
JOIN teachers
ON assistance_requests.teacher_id = teachers.id
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name