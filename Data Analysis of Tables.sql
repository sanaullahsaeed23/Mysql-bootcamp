Show databases;
use mysqlbootcamp;

-- Data Analysis [Employee, Course, Learners]
-- 1. Give me the record of the employee getting highest salary

SELECT * FROM employee
ORDER BY Salary DESC
LIMIT 1;

SELECT MAX(Salary) as max_salary FROM employee;
SELECT MIN(Salary) as min_salary FROM employee;


SELECT *
FROM employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM employee
    
);


-- 2. Give me the record of the employee getting highest salary and age is bigger than 30
SELECT * FROM employee 
WHERE age > 30 
ORDER BY Salary DESC 
LIMIT 1;

-- 3. Display the number of enrollments in the db
SELECT COUNT(*) as num_of_enrollments 
FROM Learners;

-- 4. Display the number of enrollments for the courseid = 3[SQL Bootcamp]
SELECT COUNT(*) AS num_of_learners_SQL
FROM Learners 
WHERE SelectedCourses=3 ;

Select * from Learners;

-- 5. Count the number of learners enrolled in the month of Jan
-- concpet of wildcard, % shows this can be change but 01 (month) and 21 (year) is fix
SELECT COUNT(*) as num_learners_jan FROM Learners
WHERE LearnerEnrollmentDate LIKE '2024-01-%';

-- 7. Count the number of companies where learners currently doing their job
-- Count -> count the non null entries
-- Unique count of the companies
SELECT COUNT(DISTINCT LearnerCompany) as distinct_companies 
FROM Learners