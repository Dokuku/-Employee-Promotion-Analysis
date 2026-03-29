USE EmployeeDB

;WITH group_tasks AS (
	SELECT
        *,
        CASE 
            WHEN tasks_completed < 20 THEN 'low'
            WHEN tasks_completed < 40 THEN 'medium'
            ELSE 'high'
        END AS tasks_group
    FROM 
        employee_clean
)

SELECT
    tasks_group,
    SUM(promoted) * 1.0 / COUNT(promoted) AS promoted_rate
FROM group_tasks
GROUP BY tasks_group