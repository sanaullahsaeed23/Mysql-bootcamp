 -- check the version of MariaDB server 
Select version();
 
 -- create database
 CREATE DATABASE IF NOT EXISTS techwithashish;
 
 -- Select the db on which you wanna to work
Use mysqlbootcamp;

-- command to show all the tables 
Show Tables;

-- create table
CREATE TABLE employee(
	empId INT AUTO_INCREMENT,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    salary INT NOT NULL DEFAULT 100000,
    age INT NOT NULL,
    location VARCHAR(50) NOT NULL,
	PRIMARY KEY (empId) 
);

/*
 Here we have two data-types i.e. INT and VARCHAR 
INT used for numeric digits
varchar(any_lenght) => for string characters

-- 1. PRIMARY KEY(by default NOT NULL and UNIQUE)
  --   varName DATATYPE PRIMARY KEY --> when we want single column as primary key
 --    or PRIMARY KEY (firstName, LastName)  --> when we want mix of multiple column as primary key, individual can be same but mix of firstName and lastName can't be same in the entire database.
-- 2. NOT NULL: this column should not be NULL at any cost
-- AUTO_INCREMENT: in case you want to start something from 1 or want know that will always increase by 1 then use 
*/

/* 3. DISCRIBE or DISC tableName(): want to know all the properties of columns, use DISCRIBE OR DISC, it will show you 
 what constraint table do has. */
 DESC employee;

Drop Table employee;

-- Insertion of data
INSERT INTO employee VALUES (1, "Sanaullah", "Saeed", 10, 21, 13);
INSERT INTO employee (firstName, lastName, salary, age, location) VALUES ("Abdullah", "A.", 4200140, 14, 'Islamabad');
INSERT INTO employee (firstName, lastName, salary, age, location) VALUES ("Ayush", "Raj", 1000000, 34, 'Karachi');
INSERT INTO employee (firstName, lastName, salary, age, location) VALUES ("Ashish", "Shah", 34000, 18, 'Karachi');
INSERT INTO employee (firstName, lastName, salary, age, location) VALUES ("Ayush", "Topper", 4200140, 14, 'Lahore');
INSERT INTO employee (firstName, lastName, salary, age, location) VALUES ("Vijay", "Ganesh", 540004, 54, 'Karachi');
INSERT INTO employee (firstName, lastName, salary, age, location) VALUES ("Divyanshu", "Chutiya", 214000, 87, 'Lahore');
INSERT INTO employee (firstName, lastName, salary, age, location) VALUES ("Abhay", "Sharma", 2404400, 32, 'Isalamabd');
INSERT INTO employee (firstName, lastName, salary, age, location) VALUES ("Deepak", "Sharma", 100002, 32, 'Lahore');

-- Selection of data
SELECT FIRSTNAME FROM EMPLOYEE;
Select * from employee;
-- Filter of data 
SELECT * FROM employee WHERE salary >= 1000000;

-- Updation
-- Update() => command is used to update the data inside the table. It's DML (Data Manipulation Language)
-- Alter() => command is used to update the schema of the table. It's DDL (Data Definition Language)
UPDATE employee SET lastName = 'S.' where empId = 2;

-- DELETE(DML): it is used to delete a row from the given table, but when you don't give where clause, it will complete table's data only not schema
-- DELETE FROM table_name WHERE condition;

-- Delete the table
-- Drop Table employee;





