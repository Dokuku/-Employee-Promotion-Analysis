USE EmployeeDB

SELECT
	department,
	SUM(promoted) * 1.0 / COUNT(promoted) AS precent_of_promoted
FROM 
	employee_clean
WHERE performance_score > 75
GROUP BY department