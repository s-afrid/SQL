## Primary Key
A `PRIMARY KEY` is a constraint in SQL that uniquely identifies each row in a table.

It is one of the most important concepts in database design.

### Why primary key
A `PRIMARY KEY` :
- Must be unique
- Cannot be NULL
- Is used to identify rows in a table
- Can be a single column or a combination of columns
- Each table can have only one primary key

Example.:
```sql
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100)
);
```

### How is `PRIMARY KEY` different from `UNIQUE`
At first glance, PRIMARY KEY and UNIQUE might seem similar since both prevent
duplicate values. But there are important differences:

<table>
<tr>
    <th>Feature</th>
    <th>PRIMARY KEY</th>
    <th>UNIQUE</th>
</tr>
<tr>
    <td>Must be unique</td>
    <td>YES</td>
    <td>YES</td>
</tr>
<tr>
    <td>Allows NULL values</td>
    <td>NO</td>
    <td>YES (One or more NULLs allowed)</td>
</tr>
<tr>
    <td>How many allowed</td>
    <td>Only one per table</td>
    <td>Can have multiple</td>
</tr>
<tr>
    <td>Required by table</td>
    <td>Recommended, often required</td>
    <td>Optional</td>
</tr>
<tr>
    <td>Dropping</td>
    <td>Cannot be easily dropped</td>
    <td>Can be dropped anytime</td>
</tr>
</table>

Example with unique
```sql
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(100) UNIQUE,
name VARCHAR(100)
);
```
In this example:
- id is the unique identifier for each row.
- email must be unique, but is not the primary key.

### Can I Drop a PRIMARY KEY?
Yes, but it is more restricted than dropping a UNIQUE constraint.
```sql
ALTER TABLE users DROP PRIMARY KEY;
```
This may fail if the primary key is being used elsewhere (like in a foreign key
or auto_increment column).

To drop a UNIQUE constraint:
```sql
ALTER TABLE users DROP INDEX email;
```