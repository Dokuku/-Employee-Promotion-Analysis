SELECT 
    (
        AVG(kpi_achievement_percent * performance_score) 
        - AVG(kpi_achievement_percent) * AVG(performance_score)
    ) 
    /
    (
        STDEV(kpi_achievement_percent) * STDEV(performance_score)
    ) AS correlation
FROM employee_clean;