# 🎓 School Database Management System (MySQL)

## 📌 Description

This project demonstrates a relational database system built using MySQL.
It models a school environment with students, courses, teachers, enrollments, and results.

---

## 🧱 Database Structure

### Tables:

* **students** → stores student details
* **teachers** → stores teacher information
* **courses** → courses offered (linked to teachers)
* **enrollments** → links students to courses
* **results** → stores marks for each student

---

## 🔗 Relationships

* One student can enroll in multiple courses
* One teacher can teach multiple courses
* Students receive marks per course

---

## ⚙️ Technologies Used

* MySQL

---

## 🚀 How to Run the Project

1. Open MySQL
2. Run the following commands:

```sql
SOURCE create_tables.sql;
SOURCE insert_data.sql;
SOURCE queries.sql;
```

---

## 📊 Sample Query

```sql
SELECT students.name, courses.course_name, teachers.teacher_name, results.marks
FROM results
JOIN students ON students.id = results.student_id
JOIN courses ON courses.course_id = results.course_id
JOIN teachers ON teachers.teacher_id = courses.teacher_id;
```

---

## 📈 Features Demonstrated

* Table creation with constraints
* Foreign key relationships
* Multi-table JOINs
* GROUP BY and HAVING
* Subqueries

---


## 👨‍💻 Author

REAGAN ALAI OMONDI
# email;
alairegan@gmail.com

