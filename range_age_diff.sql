USE EmployeeDB

;WITH age_range AS (
	SELECT 
		*,
		CASE 
			WHEN 27 > age AND age >= 22 THEN '22-27'
			WHEN 32 > age AND age >= 27 THEN '27-32'
			WHEN 37 > age AND age >= 32 THEN '32-37'
			WHEN 42 > age AND age >= 37 THEN '37-42'
			WHEN 47 > age AND age >= 42 THEN '42-47'
			ELSE '47+'
		END as range_of_age
	FROM 
		employee_clean
)

SELECT 
	range_of_age,
	promoted,
	AVG(performance_score) AS avg_performance_score,
	AVG(tasks_completed) AS avg_tasks,
	SUM(promoted) AS total_promoted,
	SUM(promoted) * 1.0 / COUNT(promoted) AS precent_of_promoted
FROM 
	age_range
GROUP BY 
	range_of_age, promoted
ORDER BY
	1 DESC