SELECT cohorts.name as cohort_name, count(students.*) as studendt_count
FROM cohorts 
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY studendt_count; 