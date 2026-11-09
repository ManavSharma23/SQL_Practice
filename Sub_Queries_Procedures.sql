-- SELECT *: Displays all columns and records from a table

-- WHERE: Filters records based on a condition

-- Subquery: A query written inside another query

-- AVG(): Calculates the average of a column

-- ORDER BY: Sorts the result in ascending (ASC) or descending (DESC) order

-- DESC: Sorts results in descending order

-- INNER JOIN: Combines matching records from two tables

-- AS: Gives a temporary alias to a table or column

-- ON: Specifies the condition for joining two tables

-- AND: Returns records only when both conditions are true

-- OR: Returns records when at least one condition is true

-- GROUP BY: Groups records having the same values

-- HAVING: Filters grouped records based on aggregate conditions

-- COUNT(): Counts the number of records

-- SUM(): Calculates the total of a column

-- MIN(): Returns the smallest value

-- MAX(): Returns the largest value

-- DISTINCT: Removes duplicate values




select * from agents;
select * from maps;

-- above avg win rate

select 
    id,name,agent_win_rate
from 
    agents 
where 
    agent_win_rate > 
        (select avg(agent_win_rate) from agents)
order BY
    agent_win_rate desc;


-- above avg attack_win_rate and defence_win_rate

SELECT
    a.Id,
    a.Name,
    a.Best_Map,
    m.Map_Name
FROM Agents AS a
INNER JOIN Maps AS m
    ON a.Best_Map = m.Map_ID
WHERE
    m.Attack_Rate > (SELECT AVG(Attack_Rate) FROM Maps)
    OR
    m.Defence_Rate > (SELECT AVG(Defence_Rate) FROM Maps)
ORDER BY m.Attack_Rate;

-- join

select
     * 
from 
    agents 
inner join 
    maps 
on 
    agents.best_map=maps.map_id 
where 

    map_id = (select best_map from agents group by best_map order by count(*) desc limit 1) order by agent_win_rate desc;

SELECT map_name, COUNT(*) AS total
FROM maps
WHERE map_pick_rate > (SELECT AVG(map_pick_rate) FROM maps)
GROUP BY map_name;

SELECT COUNT(*) AS total_maps
FROM maps
WHERE map_pick_rate > (SELECT AVG(map_pick_rate) FROM maps);

