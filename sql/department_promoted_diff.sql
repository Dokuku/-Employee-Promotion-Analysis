USE EmployeeDB

SELECT
	department,
	promoted,
	AVG(performance_score) AS avg_perf_score
FROM 
	employee_clean
GROUP BY 
	department, promoted
ORDER BY 
	1, 2