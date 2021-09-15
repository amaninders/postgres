-- Get important data about each assistance request.

SELECT teachers.name, students.name, assignments.name, (assistance_requests.completed_at - assistance_requests.started_at) AS "Duration"
FROM assistance_requests
JOIN assignments
ON assistance_requests.assignment_id = assignments.id
JOIN students
ON assistance_requests.student_id = students.id
JOIN teachers
ON assistance_requests.teacher_id = teachers.id
ORDER BY "Duration";