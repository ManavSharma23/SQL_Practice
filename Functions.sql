-- count,min,max,sum
select * from maps;
select * from agents;
select COUNT(map_id) from maps where map_id="mp1001";

select min(attack_rate) as defence_map , max(attack_rate) as attack_map from maps;

select sum(id) as sum_id from agents; 

select avg(attack_rate) as avg_attack_rate , avg(defence_rate) as avg_defence_rate from maps;

select best_map, count(*) from agents GROUP by best_map;

select name ,substring(best_map,3,6) from agents;

select name,locate('a',name) as position_of_a from agents;

select id,name,country from agents where agent_win_rate>53 order by FIELD(role,'Duelist','Controller','sentinel','initiator'),id ;

select id,name,country,ceil(agent_win_rate) from agents where role="duelist" and country in ('japan');     -- ceil nearest above, nearest below - 52.4=52



