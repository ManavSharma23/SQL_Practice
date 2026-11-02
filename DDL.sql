create database Valorant;
use Valorant;
create table Agents
(
    Id int primary key AUTO_INCREMENT,
    Name varchar(30) UNIQUE NOT NULL,
    Country VARCHAR(25) not null,
    Role VARCHAR(15) not null,
    Addition_Date DATE not NULL
);

insert into agents(Name,country,Role,Addition_date,Win_rate) Values('Jett',"South Korea","Duelist","2020-03-21",53.34); 
INSERT INTO Agents (Name, Country, Role, Addition_Date, Win_rate)
VALUES
('Brimstone', 'USA', 'Controller', '2020-06-02', 52.34),
('Viper', 'USA', 'Controller', '2020-06-02', 51.78),
('Omen', 'Unknown', 'Controller', '2020-06-02', 50.65),
('Phoenix', 'UK', 'Duelist', '2020-06-02', 49.82),
('Cypher', 'Morocco', 'Sentinel', '2020-06-02', 51.23),
('Sova', 'Russia', 'Initiator', '2020-06-02', 50.91),
('Sage', 'China', 'Sentinel', '2020-06-02', 52.12),
('Raze', 'Brazil', 'Duelist', '2020-06-02', 53.45),
('Breach', 'Sweden', 'Initiator', '2020-06-02', 50.32),
('Reyna', 'Mexico', 'Duelist', '2020-06-02', 51.67),
('Killjoy', 'Germany', 'Sentinel', '2020-08-04', 52.89),
('Skye', 'Australia', 'Initiator', '2020-10-27', 50.45),
('Yoru', 'Japan', 'Duelist', '2021-01-12', 49.76),
('Astra', 'Ghana', 'Controller', '2021-03-02', 51.34),
('KAY/O', 'Unknown', 'Initiator', '2021-06-22', 50.12),
('Chamber', 'France', 'Sentinel', '2021-11-16', 52.56),
('Neon', 'Philippines', 'Duelist', '2022-01-11', 53.12),
('Fade', 'Turkey', 'Initiator', '2022-04-27', 51.45),
('Harbor', 'India', 'Controller', '2022-10-18', 49.89),
('Gekko', 'USA', 'Initiator', '2023-03-07', 52.67),
('Deadlock', 'Norway', 'Sentinel', '2023-06-27', 48.92),
('Iso', 'China', 'Duelist', '2023-10-31', 50.78),
('Clove', 'Scotland', 'Controller', '2024-03-26', 53.21),
('Vyse', 'Unknown', 'Sentinel', '2024-08-27', 51.09),
('Tejo', 'Colombia', 'Initiator', '2025-01-07', 52.43),
('Waylay', 'Thailand', 'Duelist', '2025-03-04', 51.87),
('Veto', 'Senegal', 'Sentinel', '2025-10-07', 50.56),
('Miks', 'Croatia', 'Controller', '2026-03-17', 52.19),
('Hush', 'China', 'Duelist', '2026-10-27', 53.34);

-- adding a new column
SELECT * from agents;
desc agents;

alter table Agents add COLUMN Win_rate int not null;

alter table Agents add COLUMN Map varchar(30) not null;
alter table agents DROP column map;

alter table agents MODIFY COLUMN Win_rate DECIMAL(6,2) not null;




