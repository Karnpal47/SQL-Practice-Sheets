/* Write a query to create a database named ecomm*/
create database ecomm;

/*Write a query to see a list of all databases in the Database Management System.*/
show databases;

/*  Write a query to drop database ecommerce*/
drop database ecommerce;

/*Write a query to create a table named as userinfo which contains
user_id,username,password,email,created_on,. user_id must be unique,not null and auto
increment, created_on must be a date field.*/
create table userinfo(
user_id int primary key auto_increment,
username varchar(20),
password varchar(10),
email varchar(30),
created_on date);

/*Write a query to see the table description or structure.*/
desc tablename;

/* Write a query to add mobile_no column after email column in above table.*/
alter table userinfo 
add column mobile_no bigint after email;

/*Write a query to rename table userinfo to user*/
rename table userinfo to user;
-- or 
alter table userinfo
rename to user;

/* Write a query to change the datatype of created_on from date to datetime.*/
alter table user 
modify created_on datetime;

-- Write a query to Rename column mobile_no to mob_no.
alter table user 
change mobile_no mob_no int;

-- Write a SQL statement to rename the table countries to country_new.
rename table countries to country_new;

-- ) Write a SQL statement to add a column region_id to the table locations.
alter table location
add column region_id int;

-- ) Write a SQL statement to add a column ID as the first column of the table locations.
alter table location 
add column id int first;

-- 0) Write a SQL statement to add a column region_id after state_province to the table locations
alter table location
add column region_id int after state_province;

/* Write a SQL statement to change the data type of the column country_id to integer in the
table locations.*/
alter table location
modify column country_id int;

-- 2) Write a SQL statement to drop the column city from the table locations
alter table location 
drop column city;

/* Write a SQL statement to change the name of the column state_province to state, keeping
the data type and size same.*/
alter table location
change state_province state varchar(13);

/*14) Write a SQL statement to add a primary key for the columns location_id in the locations
table.*/
alter table location
modify location_id int primary key;


/*Write a SQL statement to add a foreign key constraint named fk_job_id on the job_id
column of the job_history table referencing the primary key job_id of jobs table*/
alter table job_history
add constraint fk_job_id foreign key(job_id) references job_table(job_id);

/*16) Write a SQL statement to drop the existing foreign key fk_job_id from the job_history table
on the job_id column which is referencing the job_id of jobs table.
Note: fk_job_id is a constraint name*/
alter table job_history 
drop  constraint fk_job_id;

/*17) Write a SQL statement to add an index named indx_job_id on job_id column in the table
job_history*/
alter table job_history
add index index_job_id(job_id);

/*1) Write a query to create product table which contains columns product_id,product_name,
price,category,description,image_url,is_deleted. product_id is unique,not null and auto
increment*/
create table product
(product_id int primary key auto_increment,
product_name varchar(10),
price decimal(4,2),
category char(5),
description varchar(10),
image_url char(10),
isdeleted char(5));

/*2) Write a query to create a cart table which contains columns as cart_id,user_id,product_id.
cart_id is unique,not null and auto increment,apply foreign key constraint for user_id which
takes reference of user_id column from user table,also apply foreign key constraints for
product_id which takes reference of product_id from product table.
Use cascade delete and update options so that if a record is deleted or updated in the
parent table user and product it will be reflected in the cart [child] table*/
create table cart
(cart_id int primary key auto_increment,
user_id  int,
product_id int,
foreign key(user_id)references user(user_id),
foreign key(product_id)references product(product_id));















