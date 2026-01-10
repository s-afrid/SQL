## Altering a table
You can use `ALTER TABLE` command to alter an existing table.

### Add a column
To add a column to an existing table

```sql
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
```
This query adds a new column named is_active to the users table, sets its data type to BOOLEAN, and gives it a default value of TRUE.

To add a comment use `--` in starting of a line
```sql
-- This is a comment in SQL
```

### Drop a column
To drop a column from an existing table

```sql
ALTER TABLE users DROP COLUMN is_active;
```
This will drop the column is_active from the table.

### Modify a column
To modify a column of a table, like changing its data type etc.

```sql
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);
```
This query changes the existing name column in the users table to a VARCHAR(150) type, increasing or adjusting its maximum allowed length to 150 characters.

### Moving columns
To move any column to first position
```sql
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;
```
To move a column at a particular position
```sql
ALTER TABLE users MODIFY COLUMN gender ENUM('Male', 'Female', 'Other') AFTER name;
```
This query modifies the gender column to use an ENUM with values 'Male', 'Female', and 'Other', and moves the column to appear immediately after the name column in the users table.

Both `CHANGE` and `MODIFY` are used to alter existing columns in a table, but they work slightly differently.

`CHANGE`: Rename and change datatype
```sql
ALTER TABLE users
CHANGE COLUMN city location VARCHAR(150);
```
This renames city to location and changes its type.

`MODIFY`: Only change datatype
```sql
ALTER TABLE users
MODIFY COLUMN salary BIGINT;
```
This changes only the datatype of salary 
