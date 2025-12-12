## SQL Functions
SQL functions are built-in programs used to process, manipulate, or perform calculations on data within a database. SQL functions help you analyze, transform, or summarize data in your tables.

1. Aggregate Functions

    These return a ***single value*** from a set of rows.  

    - `COUNT()`:  
        count the total number of users
        ```sql
        SELECT COUNT(*) FROM users;
        ```
        Count users who are Female
        ```sql
        SELECT COUNT(*) FROM users WHERE gender='FEMALE';
        ```
    
    - `MIN()` and `MAX()`:  
        Get minimum and maximum salary
        ```sql
        SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
        ```
    - `SUM()`:  
        Calculate total salary payout
        ```sql
        SELECT SUM(salary) AS total_payroll FROM users;
        ```
    - `AVG()`:  
        Find average salary
        ```sql
        SELECT AVG(salary) AS avg_salary FROM users;
        ```
        We will use `GROUP BY` to get average salary by gender
        ```sql
        SELECT gender, AVG(salary) AS avg_salary
        FROM users
        GROUP BY gender;
        ```
2. String Functions  

    - `LENGTH()`:  
        Length of user names
        ```sql
        SELECT name, LENGTH(name) AS name_length FROM users;
        ```
    - `LOWER()` and `UPPER()`:  
        Convert names to lowercase or uppercase
        ```sql
        SELECT name, LOWER(name) AS lowercase_name FROM users;
        SELECT name, UPPER(name) AS uppercase_name FROM users;
        ```
    - `CONCAT()`:  
        Combine name and email
        ```sql
        SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;
        ```
3. Date Functions
    - `NOW()`:  
        Current date and time
        ```sql
        SELECT NOW();
        ```
    - `YEAR()`, `MONTH()`, and `DAY()`:  
        Extact part of the date column
        ```sql
        SELECT name, YEAR(date_of_birth) AS birth_year FROM users;
        ```
    - `DATEDIFF()`:  
        Find number of days between today and birthdate
        ```sql
        SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;
        ```
    - `TIMESTAMPDIFF()`:  
        Calculate age in years
        ```sql
        SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;
        ```
4. Mathematics Functions
    - `ROUND()`, `FLOOR()` and `CEIL()`:  
        find rounded values with ceil and floor of a decimal number
        ```sql
        SELECT salary,
            ROUND(salary) AS rounded,
            FLOOR(salary) AS floored,
            CEIL(salary) AS ceiled
        FROM users;
        ```
    - `MOD()`:  
        Find even or odd user ID
        ```sql
        SELECT id, MOD(id, 2) AS remainder FROM users;
        ```
5. Condition Function  
    - `IF()`:  
        The query grabs the name and gender, but then invents a new column called is_female based on that test.
        ```sql 
        SELECT name, gender,
       IF(gender ='Female','Yes','No') AS is_female
        FROM users;
        ```

<table>
  <tr>
    <th>Category</th>
    <th>Function</th>
    <th>What it does (The Bro Explanation)</th>
    <th>Example</th>
  </tr>
  <tr>
    <td rowspan="5"><strong>Aggregate</strong><br>(The Squad)</td>
    <td><code>COUNT()</code></td>
    <td>Counts how many rows are in the list.</td>
    <td><code>SELECT COUNT(*) FROM Users;</code></td>
  </tr>
  <tr>
    <td><code>SUM()</code></td>
    <td>Adds up all the numbers in a column.</td>
    <td><code>SELECT SUM(Price) FROM Orders;</code></td>
  </tr>
  <tr>
    <td><code>AVG()</code></td>
    <td>Calculates the average value.</td>
    <td><code>SELECT AVG(Score) FROM Players;</code></td>
  </tr>
  <tr>
    <td><code>MAX()</code></td>
    <td>Finds the highest number (The MVP).</td>
    <td><code>SELECT MAX(Salary) FROM Staff;</code></td>
  </tr>
  <tr>
    <td><code>MIN()</code></td>
    <td>Finds the lowest number.</td>
    <td><code>SELECT MIN(Time) FROM Races;</code></td>
  </tr>
  <tr>
    <td rowspan="6"><strong>String</strong><br>(Text Fixers)</td>
    <td><code>CONCAT()</code></td>
    <td>Glues two pieces of text together.</td>
    <td><code>SELECT CONCAT(First, ' ', Last);</code></td>
  </tr>
  <tr>
    <td><code>UPPER()</code></td>
    <td>Makes text ALL CAPS (Shouting).</td>
    <td><code>SELECT UPPER(Name) FROM Users;</code></td>
  </tr>
  <tr>
    <td><code>LOWER()</code></td>
    <td>Makes text lowercase (Whispering).</td>
    <td><code>SELECT LOWER(Email) FROM Users;</code></td>
  </tr>
  <tr>
    <td><code>LENGTH()</code></td>
    <td>Counts how many letters are in the text.</td>
    <td><code>SELECT LENGTH(Password) FROM Users;</code></td>
  </tr>
  <tr>
    <td><code>SUBSTRING()</code></td>
    <td>Cuts out a specific part of the text.</td>
    <td><code>SELECT SUBSTRING(Name, 1, 3);</code><br><em>(Gets first 3 letters)</em></td>
  </tr>
  <tr>
    <td><code>TRIM()</code></td>
    <td>Removes accidental spaces from start/end.</td>
    <td><code>SELECT TRIM(Username) FROM Users;</code></td>
  </tr>
  <tr>
    <td rowspan="4"><strong>Math</strong><br>(The Calculator)</td>
    <td><code>ROUND()</code></td>
    <td>Rounds a decimal to the nearest whole number.</td>
    <td><code>SELECT ROUND(4.6);</code> <em>-> 5</em></td>
  </tr>
  <tr>
    <td><code>CEIL()</code></td>
    <td>Always rounds UP (Ceiling).</td>
    <td><code>SELECT CEIL(4.1);</code> <em>-> 5</em></td>
  </tr>
  <tr>
    <td><code>FLOOR()</code></td>
    <td>Always rounds DOWN (Floor).</td>
    <td><code>SELECT FLOOR(4.9);</code> <em>-> 4</em></td>
  </tr>
  <tr>
    <td><code>ABS()</code></td>
    <td>Absolute value (removes the negative sign).</td>
    <td><code>SELECT ABS(-50);</code> <em>-> 50</em></td>
  </tr>
  <tr>
    <td rowspan="3"><strong>Logic</strong><br>(The Brains)</td>
    <td><code>IF()</code></td>
    <td>Simple Yes/No switch (MySQL specific).</td>
    <td><code>SELECT IF(Age>18, 'Adult', 'Kid');</code></td>
  </tr>
  <tr>
    <td><code>COALESCE()</code></td>
    <td>The "Backup Plan". returns first non-null value.</td>
    <td><code>SELECT COALESCE(Phone, Email, 'None');</code></td>
  </tr>
  <tr>
    <td><code>CASE</code></td>
    <td>Like a complex IF/ELSE statement.</td>
    <td>
      <code>CASE WHEN Score > 90 THEN 'A'</code><br>
      <code>ELSE 'B' END</code>
    </td>
  </tr>
</table>