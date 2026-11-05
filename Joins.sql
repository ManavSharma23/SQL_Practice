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










