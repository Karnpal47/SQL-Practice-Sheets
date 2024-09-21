
--- case study 1
-- Problem Statements to be solved using - Where Clause
/* 1. Display the first name and department number for all customers whose last name is “De Haan”
(Employees table).*/
select first_name, department_id from employees
where last_name="de haan";

-- 2. Display all data from Departments table for Sales department (department_name column)
select * from departments 
where department_name="sales";

/* 3. Display the first name, last_name, department number and salary for all employees who earn
more than 9700 (Employees table).*/
select first_name, last_name, department_id,salary from employees
where salary>"9700";

-- 4. Display all data from Employees table for all employees who was hired before January 1st, 1992
select * from employees 
where hire_date < "1992-01-01";

/* 5. Display the employee number, first name, job id and department number for all employees whose
department number equals 20, 60 or 80 (Employees table).*/
select employee_id,first_name,job_id,department_id from employees
where department_id in (20,60,80);

/* 6. Display the employee number, first name, job id and department number for all employees whose
department number is not equal to 20, 60 and 80 (Employees table).*/
select employee_id,first_name, job_id ,department_id from employees
where department_id not in (20,60,80);

/*7. Display the last name, phone number, salary and manager number, for all employees whose
manager number equals 100, 102 or 103 (Employees table).*/
select last_name,phone_number,salary,manager_id from employees
where manager_id in (100,102,103);

/*8. Display the first name and salary for all employees whose first name ends with an e (Employees
table).*/
select first_name, salary from employees 
where first_name like "%e";

/* 9. Display the last name and department number for all employees where the second letter in their
last name is i (Employees table).*/
select last_name,department_id from employees 
where last_name like "_i%";

/*10. Display all data from Employees table for all employees who have the letters : L, J, or H in their
last name. Sort the query in descending order by salary.*/
select * from employees 
where last_name like "%l%" or last_name like "%j%" or last_name like "%h%"
order by salary desc;

/*11. Display the first name, hire date, salary and department number for all employees whose first
name doesn’t have the letter A. Sort the query in ascending order by department number
(Employees table).*/
select first_name,hire_date,salary,department_id from employees 
where first_name not like "%a%" 
order by department_id;

-- 12. Display all data from Employees table for all employees without any department number
select * from employees
where department_id is null;

/* 13. Display the first name concatenated with the last name, separated by comma, and salary, for all
employees whose salary not in the range between 7000 and 15000. Sort the query in ascending
order by the full name (Employees table)*/
select concat(first_name,',',salary,last_name) as full_name  from employees 
where salary not between '7000'and '15000'
order by full_name;

/*14. Display the first name concatenated with the last name, separated by comma, the phone
number concatenated with the email address, separated by hyphen, and salary, for all employees
whose salary is in the range of 5000 and 10000. Name the column headings: “FULL_NAME”,
“CONTACTS” and “SAL” respectively (Employees table).*/
select concat(first_name,',',last_name) as 'full_name',concat(phone_number,'-',email) as 'contacts',salary as 'sal' from employees 
where salary between '5000' and '10000';

/*15. Display all data from Employees table for all employees whose: salary is in the range of 6000 and
800 and their commission is not null or department number is not equal to 80, 90 and 100 and their
hire date is before January 1st, 1990.*/
select * from employees 
where salary between '800'and '6000'and
commission_pct is not null or
department_id not in(80,90,100) or
hire_date<'1999-01-01'
order by salary desc;

/*16. Display last name, job id and hire date for all employees who was hired during December 12th,
1995 and April 17th, 1998.*/
select last_name,job_id,hire_date from employees 
where hire_date between '1995-12-12' and '1998-04-17';

/*17. Display the first name concatenated with last name, hire date, commission percentage,
telephone, and salary for all employees whose salary is greater than 10000 or the third digit in their
phone number equals 5. Sort the query in a descending order by the first name (Employees table).*/
select concat(first_name,' ',last_name),hire_date,commission_pct,phone_number,salary from employees
where salary > '10000' or phone_number like '__5%'
order by first_name desc;

-- 18. Display the last name and salary for all employees who earn more than 12000 (Employees table).
select last_name, salary from employees 
where salary >"12000";

/*19. Display the last name and department number for all employees whose department number is
equal to 50 or 80. Perform this exercise once by using the IN operator, once by using the OR
operator.*/
select last_name,department_id from employees
where department_id in (50,80);
select last_name,department_id from employees
where department_id='50' or department_id='80';

-- 20. Display the first name and salary for all employees who doesn’t earn any commission.
select first_name, salary,commission_pct from employees 
where commission_pct is null;

/*21. Display the first name, salary, and manager number for all employees whose manager number is
not null*/
select first_name,salary,manager_id from employees 
where manager_id is not null;


select * from employees;

