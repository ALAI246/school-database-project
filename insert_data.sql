USE school;

-- Students
INSERT INTO students VALUES
(1, 'John', 20),
(2, 'Mary', 22),
(3, 'Peter', 19),
(4, 'Alice', 21),
(5, 'Brian', 23);

-- Teachers
INSERT INTO teachers VALUES
(1, 'Mr. Smith'),
(2, 'Ms. Johnson');

-- Courses
INSERT INTO courses VALUES
(101, 'Mathematics', 1),
(102, 'Physics', 1),
(103, 'Chemistry', 2);

-- Enrollments
INSERT INTO enrollments VALUES
(1, 1, 101),
(2, 1, 102),
(3, 2, 101),
(4, 3, 103),
(5, 4, 101),
(6, 5, 102);

-- Results
INSERT INTO results VALUES
(1, 1, 101, 85),
(2, 1, 102, 78),
(3, 2, 101, 90),
(4, 3, 103, 75),
(5, 4, 101, 88),
(6, 5, 102, 70);