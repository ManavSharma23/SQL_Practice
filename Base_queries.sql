-- BASIC QUERIES

-- SELECT *: Retrieves all columns and records from a table

-- SELECT column_name: Retrieves only specified columns

-- FROM: Specifies the table from which data is retrieved

-- WHERE: Filters records based on a condition

-- Comparison Operators:
-- =  Equal to
-- != or <>  Not equal to
-- >  Greater than
-- <  Less than
-- >= Greater than or equal to
-- <= Less than or equal to

-- AND: Returns records when all conditions are true

-- OR: Returns records when at least one condition is true

-- NOT: Reverses a condition

-- ORDER BY: Sorts the result
-- ASC: Sorts in ascending order (default)
-- DESC: Sorts in descending order

-- GROUP BY: Groups records having the same values

-- SUM(): Calculates the total of a column

-- COUNT(): Counts the number of records

-- AVG(): Calculates the average of a column

-- MIN(): Returns the smallest value

-- MAX(): Returns the largest value

-- AS: Gives a temporary alias to a column or table

-- HAVING: Filters grouped records based on aggregate conditions

-- DISTINCT: Removes duplicate records from the result

-- LIMIT: Restricts the maximum number of records returned

-- Query Execution Order (simplified):
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- SELECT
-- DISTINCT
-- ORDER BY
-- LIMIT




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

