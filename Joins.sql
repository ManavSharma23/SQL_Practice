-- INNER JOIN: Returns only matching records from both tables

-- LEFT JOIN: Returns all records from the left table and matching records from the right table
-- If no match exists, NULL is returned for right table columns

-- RIGHT JOIN: Returns all records from the right table and matching records from the left table
-- If no match exists, NULL is returned for left table columns

-- FULL OUTER JOIN: Returns all records from both tables, including unmatched records
-- MySQL does not directly support FULL OUTER JOIN; use LEFT JOIN + RIGHT JOIN with UNION

-- CROSS JOIN: Returns every possible combination of rows from both tables (Cartesian Product)

-- SELF JOIN: Joins a table with itself

-- NATURAL JOIN: Automatically joins tables using columns with the same names

-- EQUI JOIN: Joins tables using the equality operator (=)

-- NON-EQUI JOIN: Joins tables using operators other than equality (<, >, <=, >=, BETWEEN)

-- ANTI JOIN: Returns records from one table that have no matching records in another table
-- In MySQL, commonly implemented using LEFT JOIN with WHERE ... IS NULL or NOT EXISTS

-- ON: Specifies the joining condition

-- USING: Specifies common column names to join tables

-- UNION: Combines results and removes duplicates

-- UNION ALL: Combines results and keeps duplicates





-- inner join 
desc agents;
desc maps;

select 
    a.Id,a.Name,m.Map_Name,a.Country,m.location,m.Attack_rate,m.Most_Used_Sentinel 
from 
    agents as a 
inner join 
    maps as m 
on 
    a.best_map = m.map_id;

-- left join = everything from left+ matching from right

select 
    id,name,role,map_name,attack_rate,defence_rate,map_pick_rate 
from 
    agents as a 
LEFT JOIN 
    maps as m 
on 
    a.best_map=m.map_id;

-- right join = same as left but for right 

select 
    Map_id,map_name,Most_Used_Duelist
from
    maps as m
right join 
    agents as a
on
    m.map_id=a.Best_map;


-- full join = returns everything

-- Left anti join = returns all from left excluding common VALUES

select 
    id,name,country,role,attack_rate,defence_rate
from 
    agents 
left JOIN
    maps
on 
    agents.best_map=maps.map_id
where 
    agents.country="null";
