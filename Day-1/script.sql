create database sampleDatabase;


use sampledb;

-- create table
create table Students (
id tinyint primary key,
name varchar(50),
age tinyint,
course varchar(50),
marks int,
city varchar(50)
)

-- retreiving data
select  from Students;

select name, course from Students;

-- insert 
insert into Students values(1, Alex, 20, Computer Science, 85, Pune),
(2, Alina, 18, Web development, 90, Chandigarh),
(3, Harry, 20, Data science, 85, Delhi),
(4, Isha, 17, Data science, 90, Banglore),
(5, Neha, 16, Web development, 60, Banglore);

-- where (filter)
select name, id, course from Students where marks  85;

select name, id, course from Students where city = Banglore;

select  from Students where course = Web development and city = Chandigarh;

-- sort order by 
select  from Students order by marks desc;

select  from Students order by marks asc, age desc;

-- limit 
select  from Students order by marks desc limit 3;

-- update 
update Students 
set marks = 95
where id = 2

-- delete 
delete from Students where name = Alex;

truncate table Students; 


-- drop 
drop table Students;



