## Inserting data
To add new data to the table we use the `INSERT INTO` statement. Inserting data comes under create part of **CRUD**.

### Insert Without Specifying Column Names (Full Row Insert)

This method requires you to provide values for all columns in order, except
columns with default values or AUTO_INCREMENT .
```sql
INSERT INTO users VALUES
(1, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT);
```
This query inserts a new user into the users table with the given ID, name, email, gender, and birthdate, while using the column’s default value for the last field.

## Insert by Specifying Column Names
This method is safer and more readable. You only insert into specific columns.
```sql
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Bob', 'bob@example.com', 'Male', '1990-11-23');
```
This query inserts a new row into the users table by providing only name, email, gender, and date_of_birth, while the remaining fields (like id, defaults, etc.) are automatically filled by the database.

To add multiple rows
```sql
INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Bob', 'bob@example.com', 'Male', '1990-11-23'),
('Charlie', 'charlie@example.com', 'Other', '1988-02-17');
```

The remaining columns like id (which is AUTO_INCREMENT ) and created_at
(which has a default) are automatically handled by MySQL.

This is more efficient than inserting rows one by one.