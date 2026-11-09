-- STORED PROCEDURES
-- Stored procedures are reusable blocks of SQL statements
-- that can be executed repeatedly using CALL.
-- They can also accept parameters.

-- DELIMITER // : Changes the default delimiter from ; to //
-- CREATE PROCEDURE: Creates a stored procedure
-- procedure_name: Name of the procedure
-- IN: Passes an input parameter
-- OUT: Returns an output parameter
-- INOUT: Takes input and returns modified output
-- BEGIN: Starts the procedure body
-- SQL queries are written inside BEGIN and END
-- END //: Ends the procedure
-- DELIMITER ; : Restores the default delimiter
-- CALL procedure_name(): Executes the procedure
-- DROP PROCEDURE: Deletes the procedure


-- PROCEDURE 1: Select all agents

DELIMITER //

CREATE PROCEDURE select_agents()
BEGIN
    SELECT * FROM agents;
END //

DELIMITER ;

CALL select_agents();


-- PROCEDURE 2: Count agents by role

DELIMITER //

CREATE PROCEDURE select_agents_group_by_role()
BEGIN
    SELECT role, COUNT(*) AS Total_Agents
    FROM agents
    GROUP BY role;
END //

DELIMITER ;

CALL select_agents_group_by_role(); 


delimiter //
create PROCEDURE joining_maps()
BEGIN
select * from agents inner join maps on agents.Best_map=maps.Map_id ;
end //

delimiter ;

call joining_maps;

DELIMITER //

CREATE PROCEDURE add_agents(
    IN p_name VARCHAR(30),
    IN p_country VARCHAR(40),
    IN p_role ENUM('Duelist','Sentinel','Controller','Initiator'),
    IN p_addition_date DATE,
    IN p_agent_win_rate DECIMAL(5,2),
    IN p_best_map VARCHAR(10)
)
BEGIN
    INSERT INTO agents
    (Name, Country, Role, Addition_Date, Win_rate, Best_Map)
    VALUES
    (p_name, p_country, p_role, p_addition_date, p_agent_win_rate, p_best_map);
END //

DELIMITER ;

call add_agents('data1','data2','data3','2020-12-12',23,'data5');

