## Update data

The UPDATE statement in SQL is used to modify existing rows in a table. You use it when you want to change data (not insert new rows, not delete rows).

```sql
UPDATE table_name
SET column1 = value1,
    column2 = value2,
    ...
WHERE condition;
```
- `UPDATE table_name` → choose which table to modify
- `SET column = value` → which column(s) to change
- `WHERE` → decides which rows you want to update

Without WHERE, all rows get updated.
```sql
UPDATE users
SET gender = 'Other'
```

Example:
```sql
UPDATE users
SET name = 'Alicia'
WHERE id = 1;
```
This changes the name of the user with 
id = 1 to “Alicia”.

If we want to update multiple columns
```sql 
UPDATE users
SET name = 'Robert', email = 'robert@example.com'
WHERE id = 2;
```
Changes the name and email of the user with ID = 2.

Increase salary by ₹10,000 for all users whose salary is less
than ₹60,000.
```sql
UPDATE users
SET salary = salary + 10000
WHERE salary < 60000;
```