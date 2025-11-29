## Query data
The SELECT statement is used to query data from a table.

### Basic syntax
Selecting all columns
```sql
SELECT * FROM users;
```
To select specific columns
```sql
SELECT column1, column2 FROM table_name;
```

### Filtering rows with `WHERE`
The WHERE clause in SQL is used to filter rows in a table based on specific conditions so that only the records that match those conditions are returned or affected. It helps you narrow down results when selecting, updating, or deleting data. You can use comparison operators like =, >, <, !=, logical operators like AND, OR, NOT, and even pattern matching with LIKE. In short, the WHERE clause lets you control which rows your SQL query should work with.

```sql
-- Equal to
SELECT * FROM users WHERE gender = 'Male';

-- Not equal to
SELECT * FROM users WHERE gender != 'Female';

-- or
SELECT * FROM users WHERE gender <> 'Female';

-- Greater than and Less than
SELECT * FROM users WHERE date_of_birth < '1995-01-01';
SELECT * FROM users WHERE id > 10;

-- Greater than or equal and less than or equal
SELECT * FROM users WHERE id >= 5;
SELECT * FROM users WHERE id <= 20;
```

The following are the operators used with `WHERE` clause.

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Operator</th>
      <th>Description</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>=</td>
      <td>Equal to</td>
      <td>SELECT 5 = 5;</td>
    </tr>
    <tr>
      <td>!= or &lt;&gt;</td>
      <td>Not equal to</td>
      <td>SELECT 5 != 3;</td>
    </tr>
    <tr>
      <td>&lt;</td>
      <td>Less than</td>
      <td>SELECT 2 &lt; 3;</td>
    </tr>
    <tr>
      <td>&gt;</td>
      <td>Greater than</td>
      <td>SELECT 7 &gt; 4;</td>
    </tr>
    <tr>
      <td>&lt;=</td>
      <td>Less than or equal to</td>
      <td>SELECT 3 &lt;= 3;</td>
    </tr>
    <tr>
      <td>&gt;=</td>
      <td>Greater than or equal to</td>
      <td>SELECT 5 &gt;= 4;</td>
    </tr>
    <tr>
      <td><=></td>
      <td>NULL-safe equal to</td>
      <td>SELECT NULL <=> NULL;  -- returns 1</td>
    </tr>
    <tr>
      <td>BETWEEN</td>
      <td>Between two values (inclusive)</td>
      <td>SELECT 5 BETWEEN 1 AND 10;</td>
    </tr>
    <tr>
      <td>IN</td>
      <td>Matches any value in a list</td>
      <td>SELECT 3 IN (1, 2, 3);</td>
    </tr>
    <tr>
      <td>LIKE</td>
      <td>Pattern matching</td>
      <td>SELECT 'abc' LIKE 'a%';</td>
    </tr>
    <tr>
      <td>REGEXP</td>
      <td>Regular expression match</td>
      <td>SELECT 'abc' REGEXP '^a';</td>
    </tr>
    <tr>
      <td>IS NULL</td>
      <td>Check if value is NULL</td>
      <td>SELECT x IS NULL;</td>
    </tr>
    <tr>
      <td>IS NOT NULL</td>
      <td>Check if value is not NULL</td>
      <td>SELECT x IS NOT NULL;</td>
    </tr>
  </tbody>
</table>


```sql
-- Is NULL
SELECT * FROM users WHERE date_of_birth IS NULL;

-- Is not a NULL
SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- Check in between a range
SELECT * FROM users WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';

-- Using IN to match values in a list
SELECT * FROM users WHERE gender IN ('Male', 'Other');

-- To match patterns using LIKE
SELECT * FROM users WHERE name LIKE 'A%';-- Starts with A
SELECT * FROM users WHERE name LIKE '%a';-- Ends with a
SELECT * FROM users WHERE name LIKE '%li%';-- Contains 'li'

-- Using AND / OR operators  
SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';

-- Get data sorted according a column either in ascending or descending order
SELECT * FROM users ORDER BY date_of_birth ASC;
SELECT * FROM users ORDER BY name DESC;

-- Get only limited data using LIMIT
SELECT * FROM users LIMIT 5;-- Top 5 rows
SELECT * FROM users LIMIT 10 OFFSET 5;-- Skip first 5 rows, then get next 10
SELECT * FROM users LIMIT 5, 10;-- Get 10 rows starting from the 6th row (Same as
above)
SELECT * FROM users ORDER BY created_at DESC LIMIT 10;