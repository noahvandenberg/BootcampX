SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;



-- SELECT cohorts.name as cohort_name, count(*) as student_count
-- FROM students
-- JOIN cohorts on cohort_id = cohorts.id
-- GROUP BY cohort_name
-- HAVING count(*) >= 18
-- ORDER BY cohort_name;