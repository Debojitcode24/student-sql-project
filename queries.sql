-- 1. Show all students
SELECT * FROM students;

-- 2. List all courses each student is enrolled in
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.id = e.student_id
JOIN courses c ON e.course_id = c.id;

-- 3. Count students enrolled in each course
SELECT c.course_name, COUNT(e.student_id) AS student_count
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.course_name;

-- 4. Find students older than 20
SELECT * FROM students WHERE age > 20;

-- 5. List all female students
SELECT * FROM students WHERE gender = 'Female';
