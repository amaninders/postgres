-- Get the total amount of time that a student has spent on all assignments.

SELECT SUM(assignment_submissions.duration) AS "Total Duration"
FROM students
LEFT JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE students.name LIKE '%Ibrahim Schimmel%';