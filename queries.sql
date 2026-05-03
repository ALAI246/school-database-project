USE school;

-- 1. View all students
SELECT * FROM students;

-- 2. Full system view (JOIN all tables)
SELECT students.name, courses.course_name, teachers.teacher_name, results.marks
FROM results
JOIN students ON students.id = results.student_id
JOIN courses ON courses.course_id = results.course_id
JOIN teachers ON teachers.teacher_id = courses.teacher_id;

-- 3. Average marks per course
SELECT courses.course_name, AVG(results.marks) AS avg_marks
FROM results
JOIN courses ON courses.course_id = results.course_id
GROUP BY courses.course_name;

-- 4. Courses with average > 80
SELECT courses.course_name, AVG(results.marks) AS avg_marks
FROM results
JOIN courses ON courses.course_id = results.course_id
GROUP BY courses.course_name
HAVING avg_marks > 80;

-- 5. Top performing students
SELECT students.name, AVG(results.marks) AS average_score
FROM results
JOIN students ON students.id = results.student_id
GROUP BY students.name
ORDER BY average_score DESC;

-- 6. Students above average performance
SELECT name
FROM students
WHERE id IN (
    SELECT student_id
    FROM results
    GROUP BY student_id
    HAVING AVG(marks) > 80
);