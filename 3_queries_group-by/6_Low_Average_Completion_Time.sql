SELECT students.name as student, AVG(assignment_submissions.duration) average_assignment_duration, avg(assignments.duration) as average_estimated_duration 
FROM students 
JOIN assignment_submissions ON student_id = students.id 
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL  
GROUP BY student
HAVING AVG(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;