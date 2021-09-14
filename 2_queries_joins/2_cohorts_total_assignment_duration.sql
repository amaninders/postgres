-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

SELECT SUM(assignment_submissions.duration) AS "Total Duration"
FROM assignment_submissions
LEFT JOIN students
ON assignment_submissions.student_id = students.id
LEFT JOIN  cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12'