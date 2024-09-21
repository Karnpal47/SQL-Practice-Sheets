use student_data;
show databases;
show tables;
show create table customers;
desc customers;
show columns from customers;
help 'create table';
select * from employees;
select firstname,lastName,jobTitle from employees;
select customername,city,state,country from customers;
select employeenumber as 'employeesid',lastname,firstname from employees;

select * from customers;
select customername,creditlimit from customers;
select customername,creditlimit,creditlimit*(5/100),creditlimit+creditlimit*(5/100) from customers;

select * from employees;
select jobtitle from employees;
select distinct jobtitle from employees;

select * from products;
select distinct productline from products;

select * from orderdetails;
select ordernumber,quantityordered from orderdetails;
select ordernumber,quantityordered,quantityordered*2 as "double" from orderdetails;

select * from employees;
select * from employees 
where officeCode=6;
select * from employees
where employeeNumber>1030;

select * from customers;
select * from customers
where customernumber>120;
select customername,customernumber,city,phone from customers
where city='nantes'; 
help 'alter';
help 'show';
show databases;
show tables;


/* and operator*/
select * from employees;
select employeeNumber,lastName,firstName,officeCode,jobtitle from employees
where officeCode=4 and jobtitle='sales rep';
select * from customers;
select customerName,customerNumber,creditLimit from customers
where creditlimit>80000 and creditLimit<100000;
select customername,customernumber,creditLimit from customers 
where creditlimit between 50000 and 80000;
select * from customers
where city="nyc" and creditLimit>100000;
select * from employees 
where officeCode<=6;
select firstName,lastName from employees
where firstName>'a' and firstName<'m';

/* or operator*/
select * from employees
where officecode=1 or officecode=2 or officecode=6;
select * from employees
where officeCode=4 or jobTitle='sales rep';

/* multiple condition of or operator */
/*IN operator*/
select firstname, lastname,officecode from employees
where officeCode in (2,4,6);
select firstname, lastname,officecode from employees
where officeCode in (2,4,6);
select * from customers;
select customername,customernumber,country from customers 
where country in ('france','usa','jermony');
select * from orders;
select ordernumber,orderdate,status,requireddate from orders
where orderDate in ('2003-1-9','2003-3-18','2003-5-20');

/*not (negation):*/
select * from employees 
where officeCode!=1;

/* between operator:*/
select * from orders;
select ordernumber,orderdate,status from orders
where orderDate between '2003-1-5'and '2004-5-21';
select * from orders
where orderDate between '2004-1-1'and'2004-12-31';
select ordernumber,orderdate from orders
where orderDate between '2004-1-1' and '2005-12-31';

/*like operator:*/
select * from employees;
select firstName,lastname from employees 
where firstname like 'a%';

select customerName from customers 
where customername like "%and%";

select productname from products
where productName like "the________";

select orderdate from orders
where orderDate like "2004%";

select orderdate from orders 
where orderDate like '2004-11%';

select orderdate from orders 
where orderdate like '2004-__-01';

-- is not null  operator
select customername, city,state from customers 
where state is not null;

-- orderby clause
-- for ascending order(word ascending is not necessary) 
select firstname from employees 
order by firstName; -- there is no any codition hence we are not used where clause 
-- descending order 
select firstname from employees
order by firstName desc;

select customername,creditLimit from customers
where creditLimit>=100000
order by creditLimit desc;
select productname productline,productscale from products
order by productLine desc;
select productname,productline,productscale from products
order by productline, productscale;
-- for multiple orders we are display records by join list by ',' only 

-- limiting clause: 
select firstName,lastName from employees 
order by firstName desc 
limit 5;
select customername,creditlimit from customers
order by creditlimit desc 
limit 1 offset 1;

-- case clause 
select customername, country,
case country
when 'USA' then 'free delevery'
when 'UK' then '2 % delevery charge'
when 'france' then '3% delivery charge'
when 'germany' then '3% delivery charge'
else '5% delevery charges' 
end as 'message'
from customers;

select  officecode,city, 
case city
when'boston' then 'full'
when 'nyc' then 'ave'
else 'empty'
end as 'limit'
from offices;

drop table employee_new;
create table employee_new(
name varchar(255),
officecode int,
jobtitle varchar(255));
select * from employees;
insert into employee_new(select firstname,officecode,jobtitle from employees);

create table london(
customername varchar(255),
city varchar(255),
state varchar(255));
insert into london(select customerName,city,state from customers);
select * from london;

-- Built in Function
-- 1. concate function:
select firstname, lastname ,concat(firstname,'   ',lastname) as fullname from employees;

select customername, city,concat(customername,'  is located in the city ', city) as location from customers;

-- 2.upper function:
select firstname, lastname ,upper(firstname) as capital from employees;

-- 3.lower function:
select firstname, lastname,lower(firstname)as small from employees;

-- 4.nested fuction:
select firstname, lastname ,concat(upper(firstname),'   ',upper(lastname)) as fullname from employees;

-- 5.length function:
select firstname , lastname , length(firstname) from employees;
select firstname, lastname ,length(firstname) from employees
where length(firstname)>=6;

-- 6. Replace function:
select replace("let us learn","learn","sing");

select firstname, lastname, replace(email,"classicmodelcars","gmail") from employees;

-- 7.SUBSTR function:
select substr("Karnpal",1,4);
select firstname, substr(firstname,1,1) from employees;
select firstname, substr(firstname,1,1)from employees 
where substr(firstname,1,1)="a";

/* Date function:
1. current date():*/
select curdate();

-- 2.sysdate():
select sysdate();

-- 3.now():
select now();

-- 4.month(date):
select month('2003-05-06');
select month(curdate());
select orderdate, month(orderdate) from orders;

-- 5.year(column name/date):
select orderdate, month(orderdate),year(orderdate) from orders;
select orderdate, month(orderdate),year(orderdate) from orders
where month(orderdate)=2 AND year(orderdate)=2004;
select orderdate ,month(orderdate),year(orderdate) from orders;

-- 6. lastday(date):
SELECT last_day('2003-05-06') ;
select last_day(curdate());

-- 7. ADDDATE(date,value) FUNCTION:
select adddate('2024-03-06',-2);
select adddate(curdate(),10);

-- 8. datediff(date1,date2):
select datediff('2024-03-06','2001-12-04');
select datediff('2003-04-04','2003-03-04');
select orderdate, shippeddate,datediff(shippeddate,orderdate) from orders;
select orderdate,shippeddate,datediff(shippeddate,orderdate) from orders
where datediff(shippeddate,orderdate)>=4;

-- 9.timestampdiff(day/month/year,date1,date2):
select orderdate,timestampdiff(month,orderdate,curdate()) as month from orders;
select orderdate,timestampdiff(year,orderdate,curdate()) as year from orders;

-- 10.date_format(date,format):
select orderdate, date_format(orderdate,'%D %M %Y') from orders;


/* maths functions*/
-- 1.round(x,d):
select round(23.45645,2);
select round(23.45645,-1);

-- 2.truncate(x,d):
select truncate(23.45645,2);

-- 3.ceil(x):
select ceil(56.12);

-- 4.floor(x):
select floor(56.99);

-- 5.sqrt(x):
select sqrt(81);
select sqrt(9);

-- 6.pow(X,Y):
select pow(3,4);






