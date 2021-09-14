-- Get the total number of assignment submissions for each cohort.

SELECT cohorts.name, COUNT(assignment_submissions.*) AS "Total Submissions"
FROM assignment_submissions
JOIN students
ON students.id = assignment_submissions.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY "Total Submissions" DESC;