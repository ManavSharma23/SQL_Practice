-- TRIGGERS

-- A trigger automatically executes when an INSERT,
-- UPDATE or DELETE event occurs on a table.

-- SYNTAX:

-- CREATE TRIGGER trigger_name
-- BEFORE/AFTER INSERT/UPDATE/DELETE ON table_name
-- FOR EACH ROW
-- BEGIN
--     SQL statements;
-- END;

-- TYPES:
-- BEFORE INSERT / AFTER INSERT
-- BEFORE UPDATE / AFTER UPDATE
-- BEFORE DELETE / AFTER DELETE

-- KEYWORDS:

-- NEW: Accesses new values (INSERT, UPDATE).
-- OLD: Accesses old values (UPDATE, DELETE).
-- BEFORE: Executes before the operation.
-- AFTER: Executes after the operation.
-- FOR EACH ROW: Executes for every affected row.

-- EXAMPLE:

-- DELIMITER //
-- CREATE TRIGGER check_winrate
-- BEFORE INSERT ON agents
-- FOR EACH ROW
-- BEGIN
--     IF NEW.agent_win_rate > 100 THEN
--         SIGNAL SQLSTATE '45000'
--         SET MESSAGE_TEXT = 'Invalid win rate';
--     END IF;
-- END //
-- DELIMITER ;

-- DROP TRIGGER trigger_name;  -- Delete a trigger.
-- SHOW TRIGGERS;              -- View all triggers.

-- TRIGGER VS PROCEDURE:
-- Trigger: Executes automatically.
-- Procedure: Executes manually using CALL.

-- IMPORTANT:
-- Triggers cannot accept parameters.
-- Triggers are associated with a specific table.


