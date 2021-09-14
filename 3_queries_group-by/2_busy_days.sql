-- busy days

SELECT day, COUNT(*)
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;