-- Create Students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

-- Create Courses table
CREATE TABLE courses (
    id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(50)
);

-- Create Enrollments table
CREATE TABLE enrollments (
    id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);
