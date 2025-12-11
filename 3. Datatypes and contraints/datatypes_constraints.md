## Data types and constraints

### Data types
The following are the data types used in SQL

<table border="1" cellpadding="8">
    <tr>
        <th>Category</th>
        <th>Data Type</th>
        <th>Description</th>
        <th>Example</th>
    </tr>
    <tr>
        <td>Numeric</td>
        <td>TINYINT</td>
        <td>Very small integer.</td>
        <td>42</td>
    </tr>
    <tr>
        <td></td>
        <td>SMALLINT</td>
        <td>Small integer.</td>
        <td>1024</td>
    </tr>
    <tr>
        <td></td>
        <td>INT / INTEGER</td>
        <td>Standard integer.</td>
        <td>123456</td>
    </tr>
    <tr>
        <td></td>
        <td>BIGINT</td>
        <td>Large integer.</td>
        <td>9223372036854775807</td>
    </tr>
    <tr>
        <td></td>
        <td>FLOAT</td>
        <td>Single-precision floating point.</td>
        <td>3.14</td>
    </tr>
    <tr>
        <td></td>
        <td>DOUBLE</td>
        <td>Double-precision floating point.</td>
        <td>3.14159</td>
    </tr>
    <tr>
        <td></td>
        <td>DECIMAL(p,s)</td>
        <td>Exact fixed decimal.</td>
        <td>DECIMAL(10,2) → 1999.99</td>
    </tr>
    <tr>
        <td></td>
        <td>BOOLEAN</td>
        <td>True/False values.</td>
        <td>TRUE, FALSE</td>
    </tr>
    <tr>
        <td>String / Text</td>
        <td>CHAR(n)</td>
        <td>Fixed-length string.</td>
        <td>CHAR(3) → 'A  '</td>
    </tr>
    <tr>
        <td></td>
        <td>VARCHAR(n)</td>
        <td>Variable-length string.</td>
        <td>VARCHAR(255) → 'hello'</td>
    </tr>
    <tr>
        <td></td>
        <td>TEXT</td>
        <td>Large text data.</td>
        <td>Blog content, comments</td>
    </tr>
    <tr>
        <td></td>
        <td>BLOB</td>
        <td>Binary large object.</td>
        <td>Images, PDF bytes</td>
    </tr>
    <tr>
        <td>Date & Time</td>
        <td>DATE</td>
        <td>Calendar date.</td>
        <td>'2025-11-20'</td>
    </tr>
    <tr>
        <td></td>
        <td>TIME</td>
        <td>Time of day.</td>
        <td>'14:30:00'</td>
    </tr>
    <tr>
        <td></td>
        <td>DATETIME</td>
        <td>Date and time.</td>
        <td>'2025-11-20 14:30:00'</td>
    </tr>
    <tr>
        <td></td>
        <td>TIMESTAMP</td>
        <td>Timestamp value.</td>
        <td>CURRENT_TIMESTAMP</td>
    </tr>
    <tr>
        <td>Structured</td>
        <td>JSON</td>
        <td>JSON object storage.</td>
        <td>{"name":"Ash","age":24}</td>
    </tr>
    <tr>
        <td></td>
        <td>XML</td>
        <td>XML document.</td>
        <td>&lt;user&gt;Ash&lt;/user&gt;</td>
    </tr>
    <tr>
        <td>Enumerated</td>
        <td>ENUM</td>
        <td>Choose one value from list.</td>
        <td>ENUM('active','pending','done')</td>
    </tr>
    <tr>
        <td></td>
        <td>SET</td>
        <td>Set of zero or more values.</td>
        <td>SET('a','b','c')</td>
    </tr>
    <tr>
        <td>Spatial</td>
        <td>POINT</td>
        <td>Geographical point.</td>
        <td>POINT(77.6, 12.9)</td>
    </tr>
    <tr>
        <td></td>
        <td>POLYGON</td>
        <td>Shape defined by points.</td>
        <td>POLYGON((...))</td>
    </tr>
    <tr>
        <td>Misc</td>
        <td>UUID</td>
        <td>Universally unique ID.</td>
        <td>550e8400-e29b-41d4-a716-446655440000</td>
    </tr>
    <tr>
        <td></td>
        <td>SERIAL</td>
        <td>Auto-increment integer.</td>
        <td>id SERIAL PRIMARY KEY</td>
    </tr>
</table>

## Constraints

SQL constraints are rules used to limit the type of data that can be stored in a table, ensuring the accuracy, reliability, and integrity of the data. If a data manipulation operation (INSERT, UPDATE, or DELETE) violates a constraint, the action is aborted. 

<table border="1">
  <tr>
    <th>Constraint</th>
    <th>Description</th>
    <th>Example</th>
  </tr>

  <tr>
    <td>PRIMARY KEY</td>
    <td>Uniquely identifies each row in a table; cannot contain NULL values.</td>
    <td>
      <code>
      CREATE TABLE Students (<br>
      &nbsp;&nbsp;id INT PRIMARY KEY,<br>
      &nbsp;&nbsp;name VARCHAR(50)<br>
      );
      </code>
    </td>
  </tr>

  <tr>
    <td>FOREIGN KEY</td>
    <td>Ensures referential integrity by linking a column to the primary key of another table.</td>
    <td>
      <code>
      CREATE TABLE Orders (<br>
      &nbsp;&nbsp;order_id INT PRIMARY KEY,<br>
      &nbsp;&nbsp;student_id INT,<br>
      &nbsp;&nbsp;FOREIGN KEY (student_id) REFERENCES Students(id)<br>
      );
      </code>
    </td>
  </tr>

  <tr>
    <td>UNIQUE</td>
    <td>Ensures all values in a column are different.</td>
    <td>
      <code>
      CREATE TABLE Users (<br>
      &nbsp;&nbsp;email VARCHAR(100) UNIQUE,<br>
      &nbsp;&nbsp;username VARCHAR(50)<br>
      );
      </code>
    </td>
  </tr>

  <tr>
    <td>NOT NULL</td>
    <td>Prevents a column from storing NULL values.</td>
    <td>
      <code>
      CREATE TABLE Products (<br>
      &nbsp;&nbsp;product_name VARCHAR(50) NOT NULL,<br>
      &nbsp;&nbsp;price DECIMAL(10,2)<br>
      );
      </code>
    </td>
  </tr>

  <tr>
    <td>CHECK</td>
    <td>Ensures a condition must be met for a value to be allowed.</td>
    <td>
      <code>
      CREATE TABLE Employees (<br>
      &nbsp;&nbsp;age INT CHECK (age &gt;= 18),<br>
      &nbsp;&nbsp;salary INT<br>
      );
      </code>
    </td>
  </tr>

  <tr>
    <td>DEFAULT</td>
    <td>Sets a default value when no value is specified.</td>
    <td>
      <code>
      CREATE TABLE Payments (<br>
      &nbsp;&nbsp;status VARCHAR(20) DEFAULT 'Pending'<br>
      );
      </code>
    </td>
  </tr>

  <tr>
    <td>INDEX</td>
    <td>Improves query performance on a column.</td>
    <td>
      <code>
      CREATE INDEX idx_username<br>
      ON Users(username);
      </code>
    </td>
  </tr>

  <tr>
    <td>AUTO_INCREMENT / IDENTITY</td>
    <td>Automatically generates unique numbers for new rows.</td>
    <td>
      <code>
      MySQL:<br>
      CREATE TABLE Tickets (<br>
      &nbsp;&nbsp;id INT AUTO_INCREMENT PRIMARY KEY<br>
      );<br>
      <br>
      SQL Server:<br>
      id INT IDENTITY(1,1)
      </code>
    </td>
  </tr>
</table>

Learn in detail : [Constraints](constraints.md)
