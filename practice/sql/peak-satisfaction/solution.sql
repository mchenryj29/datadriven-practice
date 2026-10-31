SELECT fiscal_year,
MAX(metric_value) AS max_score,
MIN(metric_value) AS min_score,
COUNT(*) AS measurement_count
FROM employee_metrics
WHERE metric_name = 'satisfaction_score'
GROUP BY fiscal_year
