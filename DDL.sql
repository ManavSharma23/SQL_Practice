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

-- adding a new column
SELECT * from agents;
alter table Agents add COLUMN Win_rate int not null;

