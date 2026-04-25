use sampledb;

create table Students (
id int primary key auto_increment, 
name varchar(50),
department varchar(50),
marks int,
email varchar(50) not null unique,
age tinyint,
check(age >= 15)
)

select * from Students;

insert into Students(name, department, marks, email, age) 
values("Alina", "Computer Science", 91, "alina@gmail.com", 20)

insert into Students(name, department, marks, email, age) 
values("Isha", "Computer Science", 90, "isha@gmail.com", 20),
("Karan", "Data Science", 85, "karan@gmail.com", 16),
("Alex", "Mechanical", 80, "alex@gmail.com", 18)

insert into Students(name, department, marks, email, age) 
values ("Alaya", "Mechanical", 85, "alaya@gmail.com", 20)

-- Aggregate function
select count(*) from Students;

select count(*) from Students where department = "Computer Science";

select sum(marks) from Students where department = "Computer Science";

select avg(marks) from Students;

select max(marks) from Students;

select min(marks) from Students;

-- each, individual per, every
select department, avg(marks) from Students group by department

select department, sum(marks) from Students group by department

select department, count(*) from Students group by department

-- having 
select department, avg(marks) from Students 
group by department 
having avg(marks) > 90


use sampleproducts;
drop table customers;
drop table orders;

-- FOERIGN key 
create table customers (
customerId int, 
name varchar(50),
city varchar(50), 
primary key (customerId)
)

insert into customers values(1, "alex", "pune"), (2, "alaya", "banglore"), (3, "alina", "banglore");
insert into customers values(4, "alex", "pune"), (5, "alaya", "banglore"), (6, "alina", "banglore");


select * from customers;

create table orders (
orderID int,
orderNumber int, 
customerId int, 
Primary key(orderID),
foreign key (customerId) references customers(customerId) on delete cascade
)

insert into orders values(101, 909000, 1),(102, 89090, 2), (103, 9809090, 3), (104, 809090, 2)

select * from orders;

-- inner join 
select customers.name, orders.orderNumber, orders.orderID from customers inner join orders 
on customers.customerId = orders.customerId;

-- left join 
select * from customers left join orders 
on customers.customerId = orders.customerId

-- right join 
select * from customers right join orders 
on customers.customerId = orders.customerId







