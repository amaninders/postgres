-- Get the total number of assistance_requests for a student.

SELECT COUNT(assistance_requests.*), students.name
FROM assistance_requests
JOIN students
ON assistance_requests.student_id = students.id 
WHERE students.name LIKE 'Elliot Dickinson'
GROUP BY students.name;