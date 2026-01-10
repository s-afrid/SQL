CREATE TABLE user_log (
id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_log (user_id, name)
    VALUES (NEW.id, NEW.name);
END$$
DELIMITER ;

CALL AddUser('Ritika Sharma', 'ritikasharma@example.com', 'Female', '1996-03-12', 72000);

SELECT * FROM user_log;

DROP TRIGGER IF EXISTS after_user_insert;
