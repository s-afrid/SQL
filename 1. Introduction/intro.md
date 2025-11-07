## Introduction

### What is a database ?
A database is a way to store data in a format which makes it easily accessible.

Consider storing data of each person in different files. There would be tons of files, accessing files based on a condition like, accessing files where persons age > 18 or any other is complex and we have to write program for that.

But in databases the particular data can be obtained easily. The data retrieval in databases is done by writing ***Queries***.

***Query*** - The query is like a question you ask the database. Like asking the database to give me a the persons data with age > 18, or if the person lives in particular place. A query is done my a **command** that follows a syntax.

### SQL

Structured Query Language (SQL) is the standard language used to interact with databases. It's all about writing queries that fetch the correct result. It allows users to store, retrieve, update and manage data efficiently through simple commands.  

### CRUD operations

CRUD stands for create, read, update and delete. These are the primary operations that are performed on any database.

### What is a Database Management System (DBMS)? 

A Database Management System (DBMS) is software that interacts with end users,
applications, and the database itself to capture and analyze data. It allows for the creation, retrieval, updating, and management of data in databases.
 
If you know one DBMS, you can easily transition to another, as they share similar concepts andfunctionalities.

Ex: MySQL, PostgreSQL, Microsoft SQL ... etc

### Relational DBMS and Non-relational DBMS

#### Relational DBMS

- Follows a fixed and predefined schema (strick rules)
- Data is organised into structured tables in rows and columns
- Ensures data integrity through constraints and relationships
- Utilizes SQL for defining and manipulating data
- Well-suited for applications requiring complex queries and transactional consistency.

Eg: MySQL, PostgreSQL,...etc

#### Non-Relational DBMS

- Provides flexible data storage and modelling
- Does not enforce a fixed or consistent schema
- SQL is not mandatory for data manipulation and querying
- Ideal for use cases where read operations are more frequent than write operations

Eg: MongoDB cassandra, Redis ... etc

## Installing MySQL

For windows installation download the MySQL software from here

https://dev.mysql.com/downloads/installer/

Run the installer

- Select full installation
- Click on execute so that it will install all the products
- Set a password
- Finish installation

For Linux installation

- Open terminal
- `sudo apt update`
- Install MySQL server `sudo apt install mysql-server`
- Type 'y' for yes
- To secure installation `sudo mysql_secure_installation`
- select no for first to enter valid password, select yes for every other option
- start mysql `sudo mysql`
- set user 
    ```sql
    CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
    ```
- Grant all privileges to this user
    ```sql
    GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost' WITH GRANT OPTION;
    ```
- Next flush privileges
    ```sql
    FLUSH PRIVILEGES;
    ```
- Install mysql-workbench from apps center

### Setup new connection

On MySQL workbench:

MySQL Workbench is a visual tool for database architects, developers, and DBAs. It provides data modeling, SQL development, and comprehensive administration tools for server configuration, user administration, backup, and much more.

- Click on plus
- Name the connection
- Enter the username
- Password: Store in vault -> Enter the password
- Click ok
- And next click on the connection to open the editor

### Create a database

To create a data base we will run a SQL query

```sql
CREATE DATABASE database_name;
```

Execute this on clicking execute button on workbench editor, and the database is created.

To set it as default schema

```sql
USE database_name;
```