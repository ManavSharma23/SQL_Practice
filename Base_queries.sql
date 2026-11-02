-- Basic Queries 

-- Select Everything 

SELECT * from departments;
SELECT * FROM employees;
SELECT * from orders;

select location,budget from departments;
select first_name,last_name from employees;
select quantity,total_amount from orders;

select * from departments where id >23 order by budget ASC;
select first_name,email,city,salary from employees where city="delhi" or city="mumbai" ORDER BY salary desc;

select location,sum(budget) from departments GROUP by location order by sum(budget) asc;

select product_name,sum(quantity),sum(total_amount) from orders group by product_name order by sum(total_amount) desc;
SELECT location,sum(budget) as total_budget from departments group by location ORDER BY sum(budget) desc;

select department_name,sum(budget) as total_budget,count(location) as total_location from departments group by department_name order by count(location) desc;

select employee_id,sum(quantity) as total_quantity from orders where employee_id>20 group by employee_id having sum(quantity)>10 order by sum(quantity) desc;

select distinct city , first_name,salary from employees where salary > 111000 order by salary desc limit 8;

