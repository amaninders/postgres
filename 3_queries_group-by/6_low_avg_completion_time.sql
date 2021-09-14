-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

SELECT students.name, AVG(assignment_submissions.duration) AS "Average Completion Time", AVG(assignments.duration) AS "Average Suggested Completion Time"
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
JOIN assignments
ON assignment_submissions.assignment_id = assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY "Average Completion Time"