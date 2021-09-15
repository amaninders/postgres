-- Get the name of all teachers that performed an assistance request during a cohort.

SELECT DISTINCT(teachers.name), cohorts.name
FROM assistance_requests
JOIN teachers
ON assistance_requests.teacher_id = teachers.id
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE 'JUL02'
ORDER BY teachers.name