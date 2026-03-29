USE EmployeeDB

;WITH performence_range AS (
    SELECT 
        *,
        CASE 
            WHEN performance_score < 60 THEN 'low'
            WHEN performance_score < 80 THEN 'medium'
            ELSE 'high'
        END AS performance_score_group
    FROM employee_clean
)

SELECT 
    performance_score_group,
    SUM(promoted) * 1.0 / COUNT(promoted) AS precent_of_promoted
FROM performence_range
GROUP BY performance_score_group;