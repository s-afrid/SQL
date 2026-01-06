ALTER TABLE users
ADD COLUMN referred_by_id INT;

UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3);-- User 1 referred Users 2 and 3
UPDATE users SET referred_by_id = 2 WHERE id = 4;-- User 2 referred User 4

SELECT 
    a.id,
    a.name AS user_name,
    b.name AS referred_by
    FROM users a
    INNER JOIN users b ON a.referred_by_id = b.id;

