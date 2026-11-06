select * from agents;
UPDATE agents set Best_map ='Icebox' where Name ='Killjoy';
UPDATE agents SET Best_Map = 'Ascent' WHERE Name = 'Jett';
UPDATE agents SET Best_Map = 'Bind' WHERE Name = 'Brimstone';
UPDATE agents SET Best_Map = 'Haven' WHERE Name = 'Viper';
UPDATE agents SET Best_Map = 'Split' WHERE Name = 'Omen';
UPDATE agents SET Best_Map = 'Lotus' WHERE Name = 'Phoenix';
UPDATE agents SET Best_Map = 'Sunset' WHERE Name = 'Cypher';
UPDATE agents SET Best_Map = 'Icebox' WHERE Name = 'Sova';
UPDATE agents SET Best_Map = 'Pearl' WHERE Name = 'Sage';
UPDATE agents SET Best_Map = 'Fracture' WHERE Name = 'Raze';
UPDATE agents SET Best_Map = 'Abyss' WHERE Name = 'Breach';
UPDATE agents SET Best_Map = 'Breeze' WHERE Name = 'Reyna';
UPDATE agents SET Best_Map = 'Summit' WHERE Name = 'Skye';
UPDATE agents SET Best_Map = 'Ascent' WHERE Name = 'Yoru';
UPDATE agents SET Best_Map = 'Bind' WHERE Name = 'Astra';
UPDATE agents SET Best_Map = 'Haven' WHERE Name = 'KAY/O';
UPDATE agents SET Best_Map = 'Split' WHERE Name = 'Chamber';
UPDATE agents SET Best_Map = 'Lotus' WHERE Name = 'Neon';
UPDATE agents SET Best_Map = 'Sunset' WHERE Name = 'Fade';
UPDATE agents SET Best_Map = 'Icebox' WHERE Name = 'Harbor';
UPDATE agents SET Best_Map = 'Pearl' WHERE Name = 'Gekko';
UPDATE agents SET Best_Map = 'Fracture' WHERE Name = 'Deadlock';
UPDATE agents SET Best_Map = 'Abyss' WHERE Name = 'Iso';
UPDATE agents SET Best_Map = 'Breeze' WHERE Name = 'Clove';
UPDATE agents SET Best_Map = 'Corrode' WHERE Name = 'Vyse';
UPDATE agents SET Best_Map = 'Summit' WHERE Name = 'Tejo';
UPDATE agents SET Best_Map = 'Ascent' WHERE Name = 'Waylay';
UPDATE agents SET Best_Map = 'Bind' WHERE Name = 'Veto';
UPDATE agents SET Best_Map = 'Haven' WHERE Name = 'Miks';
UPDATE agents SET Best_Map = 'Summit' WHERE Name = 'Hush';

select * from agents where name like "%m%";

select * from maps;
-- wrote this after getting the idea that two tables can be joined using map as base


UPDATE Agents SET Best_Map = 'MP1001' WHERE Name = 'Jett';      -- Ascent
UPDATE Agents SET Best_Map = 'MP1002' WHERE Name = 'Raze';      -- Bind
UPDATE Agents SET Best_Map = 'MP1002' WHERE Name = 'Brimstone'; -- Bind
UPDATE Agents SET Best_Map = 'MP1002' WHERE Name = 'Skye';     -- Bind
UPDATE Agents SET Best_Map = 'MP1002' WHERE Name = 'Cypher';   -- Bind

UPDATE Agents SET Best_Map = 'MP1003' WHERE Name = 'Yoru';     -- Haven
UPDATE Agents SET Best_Map = 'MP1003' WHERE Name = 'Omen';     -- Haven
UPDATE Agents SET Best_Map = 'MP1003' WHERE Name = 'Sova';     -- Haven
UPDATE Agents SET Best_Map = 'MP1003' WHERE Name = 'Chamber';  -- Haven

UPDATE Agents SET Best_Map = 'MP1004' WHERE Name = 'Neon';     -- Split
UPDATE Agents SET Best_Map = 'MP1004' WHERE Name = 'Astra';    -- Split
UPDATE Agents SET Best_Map = 'MP1004' WHERE Name = 'Breach';   -- Split
UPDATE Agents SET Best_Map = 'MP1004' WHERE Name = 'Sage';     -- Split

UPDATE Agents SET Best_Map = 'MP1005' WHERE Name = 'Reyna';    -- Icebox
UPDATE Agents SET Best_Map = 'MP1005' WHERE Name = 'Viper';    -- Icebox
UPDATE Agents SET Best_Map = 'MP1005' WHERE Name = 'KAY/O';    -- Icebox
UPDATE Agents SET Best_Map = 'MP1005' WHERE Name = 'Killjoy';  -- Icebox

UPDATE Agents SET Best_Map = 'MP1006' WHERE Name = 'Phoenix';  -- Breeze
UPDATE Agents SET Best_Map = 'MP1006' WHERE Name = 'Harbor';   -- Breeze
UPDATE Agents SET Best_Map = 'MP1006' WHERE Name = 'Fade';     -- Breeze
UPDATE Agents SET Best_Map = 'MP1006' WHERE Name = 'Deadlock'; -- Breeze

UPDATE Agents SET Best_Map = 'MP1007' WHERE Name = 'Iso';      -- Fracture
UPDATE Agents SET Best_Map = 'MP1007' WHERE Name = 'Clove';    -- Fracture
UPDATE Agents SET Best_Map = 'MP1007' WHERE Name = 'Gekko';    -- Fracture
UPDATE Agents SET Best_Map = 'MP1007' WHERE Name = 'Vyse';     -- Fracture

UPDATE Agents SET Best_Map = 'MP1008' WHERE Name = 'Waylay';   -- Pearl
UPDATE Agents SET Best_Map = 'MP1008' WHERE Name = 'Miks';     -- Pearl
UPDATE Agents SET Best_Map = 'MP1008' WHERE Name = 'Tejo';     -- Pearl
UPDATE Agents SET Best_Map = 'MP1008' WHERE Name = 'Veto';     -- Pearl

UPDATE Agents SET Best_Map = 'MP1011' WHERE Name = 'Hush';     -- Abyss

alter table agents rename column agent_win_rate to Agent_win_rate;
alter table maps rename column vct_pick_rate to Map_Pick_Rate;

update agents set country ="Null" where name in ("Omen","vyse","KAY/O");