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