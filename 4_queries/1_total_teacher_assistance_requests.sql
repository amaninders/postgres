-- Get the total number of assistance_requests for a teacher.

SELECT COUNT(assistance_requests.*), teachers.name
FROM assistance_requests
JOIN teachers
ON assistance_requests.teacher_id = teachers.id 
WHERE teachers.name LIKE 'Waylon Boehm'
GROUP BY teachers.name;