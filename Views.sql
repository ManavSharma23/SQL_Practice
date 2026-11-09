-- DESC: Displays the structure of a table

-- CREATE VIEW: Creates a virtual table based on a SELECT query

-- WHERE: Filters records based on a condition

-- INNER JOIN: Combines matching records from two tables

-- ON: Specifies the condition for joining two tables

-- LEFT JOIN: Returns all records from the left table and matching records from the right table

-- SELECT * FROM view_name: Displays all records from a view

-- SHOW INDEXES: Displays indexes created on a table

-- INDEX: Improves the speed of data retrieval

-- DROP VIEW: Deletes an existing view




-- view for seeing name and best map where win_rate>52
desc agents;
desc maps;
create view agent_win_52 as 
select 
    name,best_map
from 
    agents 
where
    agent_win_rate > 52;

-- left join table and see the important agent data 

create view agent_map as

select 
    agents.name,agents.addition_date,maps.map_id,maps.map_name,maps.attack_rate,maps.defence_rate
from 
    agents
inner join 
    maps
on 
    agents.best_map=maps.map_id;

select * from agent_map;
select * from  agent_win_52;

show indexes from agents;
