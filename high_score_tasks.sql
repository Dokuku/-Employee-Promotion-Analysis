SELECT 
    promoted,
    AVG(tasks_completed)
FROM employee_clean
WHERE performance_score >= 75
GROUP BY promoted;