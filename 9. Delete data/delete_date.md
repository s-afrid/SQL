## Delete data
The DELETE statement in SQL is used to remove rows from a table.

- It does not remove columns.
- It does not delete the table itself.
- It only deletes data inside the table.

```sql
DELETE FROM table_name
WHERE condition;
```
- `DELETE FROM table_name` → choose table

- `WHERE condition` → choose which rows to delete

Without WHERE, all rows get deleted
```sql
DELETE FROM users;
```
This deletes every row in the users table.

The table remains, but it becomes completely empty.

Delete One Row
```sql
DELETE FROM users
WHERE id = 3;
```
Delete Multiple Rows
```sql
DELETE FROM users
WHERE gender = 'Other';
```
Delete All Rows (but keep table structure)
```sql
DELETE FROM users;
```
Drop the Entire Table (use with caution)
```sql
DROP TABLE users;
```

 

- Always use WHERE unless you’re intentionally updating/deleting everything.
- Consider running a SELECT  with the same WHERE clause first to confirm what
will be affected
```sql
SELECT * FROM users WHERE id = 3;
```
- Always back up important data before performing destructive operations