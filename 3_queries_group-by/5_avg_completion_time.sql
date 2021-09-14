-- Get currently enrolled students' average assignment completion time.

SELECT students.name, AVG(assignment_submissions.duration) AS "Average Completion Time"
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY "Average Completion Time" DESC;