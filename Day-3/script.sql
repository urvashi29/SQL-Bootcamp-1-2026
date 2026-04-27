use sampleproducts;

create table Students (
student_id int primary key auto_increment,
name varchar(50),
department varchar(50),
city varchar(50)
)

create table courses (
course_id int primary key auto_increment,
course_name varchar(50),
department varchar(50)
)

select * from courses;

create table enrollments(
enrollment_id int primary key auto_increment,
student_id int,
course_id int,
marks int,
foreign key (student_id) references Students(student_id),
foreign key (course_id) references courses(course_id)
)

insert into Students(name, department, city) 
values("Neha", "Data Science", "Mumbai"),
("Karan", "Computer Science", "Pune"),
("Alina", "Data Science", "Banglore"),
("Alex", "Computer Science", "Pune");

select * from Students;

insert into courses (course_name, department)
values("Web Development","Computer Science"),
("AI Fundamentals", "Data Science"),
("Software Engineering", "Computer Science"),
("Machine Learning","Data Science")


select * from courses;

insert into enrollments(student_id, course_id, marks)
values(1, 2, 90),
(1, 4, 85),
(2, 4, 80),
(3, 3, 70),
(4, 2, 85),
(4, 1, 65)


select * from enrollments;

-- alias
select s.name, s.department, c.course_name, e.marks from Students s 
inner join  enrollments e on s.student_id = e.student_id
inner join courses c on e.course_id = c.course_id


-- single row 
select name, department from Students where student_id in (
select student_id from enrollments 
where marks > (select avg(marks) from enrollments)
);

-- multi row 
select course_name from courses where course_id in (
select course_id from enrollments where marks > 80
)

-- find top scorers in each department 
select s.name, s.department, e.marks from Students s 
inner join enrollments e on s.student_id = e.student_id
where e.marks = (
select max(marks) from enrollments e2 
inner join Students s2 on s2.student_id = e2.student_id
where s2.department = s.department 
)













