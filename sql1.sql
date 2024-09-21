create database compony;
use compony;

create table employee
( 
empid int primary key,
emp_name varchar(20),
salary decimal);
alter table employee 
add position varchar(20);
desc employee;
insert into employee value
(101,"karn",10000,"dhule");
alter table employee 
change position location varchar(20);
alter table employee
modify emp_name varchar(30);
alter table employee 
add primary key(empid);
desc employee;
alter table employee 
drop constraint empid;

alter table employee
add foreign key (empid) references school;
show create table employee;
alter table employee 
drop index empid;
set sql_safe_updates=0;

select * from  employee;
alter table employee
drop employee;

drop table student;
desc student;

create database school;
use school;
create table student(
stdid int ,
stdname varchar(20) not null,
location varchar(10),
marks float);
insert into student
 values
(1,'karan','dhule',35.50),
(2,'abhi','moshi',36.40),
(3,'kunal','chakan',40.00),
(4,'tejas','pune',37.30),
(5,'ram','nagaon',20.30);
desc student;
show create table student;
alter table  student 
add column attendence char(5);
alter table student 
add column age int;
insert into student(age)
VALUES(23),(24),(34),(23),(21);
alter table student
modify stdname varchar(20) default 20;





select * from student;
truncate table student; 






