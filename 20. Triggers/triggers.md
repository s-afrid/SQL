## Triggers

A trigger is a special kind of stored program that is automatically executed(triggered) when a specific event occurs in a table — such as `INSERT` , `DELETE` or `UPDATE`.

Triggers are commonly used for:

- Logging changes
- Enforcing additional business rules
- Automatically updating related data

### Basic structure of Trigger
```sql
CREATE TRIGGER trigger_name
AFTER INSERT ON table_name
FOR EACH ROW
BEGIN
    -- statements to execute
END;
```

- `CREATE TRIGGER trigger_name`: You are telling the database to build a new automation and giving it a name (e.g., NewUserWelcome).

- `AFTER INSERT`: This defines when the trigger runs.
    - `AFTER`: Run this code after the new data has been successfully saved. (You can also use BEFORE).
    - `INSERT`: Run this only when a new row is created. (You can also use UPDATE or DELETE).

- `ON table_name`: This defines where the trigger watches. It will only activate if data is inserted into this specific table (e.g., users).

- `FOR EACH ROW`: This ensures the trigger runs once for every single row added. If you insert 100 users at once, this trigger fires 100 times

- `BEGIN ... END`: This is the container for the actual logic. Any SQL code you write between these two words is what will happen automatically (e.g., "Insert a log entry" or "Update a total count").

Triggers can be fired:

- BEFORE or AFTER an event
- On INSERT ,UPDATE ,or DELETE

### Scenario: Log every new user insertion

Suppose we want to log every time a new user is inserted into the `users` table. We’ll create a separate table called `user_log` to store log entries.

1. Creating log table

```sql
CREATE TABLE user_log (
id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

2. Create the trigger

We now define a trigger that runs after a new user is added.

```sql
DELIMITER $$
CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_log (user_id, name)
    VALUES (NEW.id, NEW.name);
END$$
DELIMITER ;
```

Explanation:

- AFTER INSERT means the trigger fires after the user is inserted.
- NEW refers to the new row being added to the users table.
- We insert the new user’s ID and name into the user_log table.

3. Testing trigger

Use the stored procedure we created in previous lession.

```sql
CALL AddUser('Ritika Jain', 'ritika@example.com', 'Female', '1996-03-12', 74000);
```

Now check the `user_log` table:
```sql
SELECT * FROM user_log;
```
You should see Ritika’s info automatically logged.

### Dropping an trigger

If you need to remove a trigger:
```sql
DROP TRIGGER IF EXISTS after_user_insert;
```