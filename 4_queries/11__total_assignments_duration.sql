-- Get each day with the total number of assignments and the total duration of the assignments.

SELECT assignments.day, COUNT(assignments.*) AS number_of_assignments, SUM(assignments.duration) AS duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day