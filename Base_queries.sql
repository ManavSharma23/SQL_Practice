-- Basic Queries 

-- Select Everything 

SELECT * from departments;
SELECT * FROM employees;
SELECT * from orders;

select location,budget from departments;
select first_name,last_name from employees;
select quantity,total_amount from orders;

select * from departments where id >23 order by budget ASC;
select first_name,email from employees where city="delhi" ORDER BY salary desc;

select location,sum(budget) from departments GROUP by location order by sum(budget) asc;

select product_name,sum(quantity),sum(total_amount) from orders group by product_name order by sum(total_amount) desc;
SELECT location,sum(budget) as total_budget from departments group by location ORDER BY sum(budget) desc;

select department_name,sum(budget) as total_budget,count(location) as total_location from departments group by department_name order by count(location) desc;
