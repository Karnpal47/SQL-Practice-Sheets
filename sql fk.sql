create database village;
use village;

create table rich(
pid int primary key auto_increment,
pname varchar(10),
age int,
civil varchar(9));

insert into rich
(pid,pname,age,civil)
values
(101,'karan',23,'good'),
(102,'arjun',24,'ave');
alter table rich 
add column occupation varchar(10);
insert into rich 
(occupation)
value('farm');
alter table rich 
add column sub enum('maths','eng','mara');

alter table rich 
drop column occupation;
insert into rich (civil)value('good');
alter table rich 
modify pname varchar(10) default'karan';



desc table rich;
show create table rich;
drop table rich;
select * from rich;
