Show databases;
use mysqlbootcamp;

Select * from Learners;
-- Agreegation and Grouping
-- Count of the number of students who joined the course via LinkedIn, YouTube, Community
SELECT SourceOfJoining, COUNT(*) as num_of_students
FROM learners
GROUP BY SourceOfJoining;

-- Aggregation Operators => COUNT(), MIN(), MAX(), AVG(), SUM()
-- Grouping via sourceofjoining and the location
SELECT SourceOfJoining, Location, COUNT(*) as num_of_students
FROM learners
GROUP BY SourceOfJoining, Location;
-- After Select all non-aggregated columns should be mentioned after GROUP BY (otherwise it gives error)

-- Corresponding to each course, how many students have enrolled
Select SelectedCourses, Count(*) as num_of_students
From Learners
Group by SelectedCourses;

-- Corresponding to individual source of joining, give the maximum years of experience any person hold?
Select SourceOfJoining, max(YearsOfExperience) as max_experience
From Learners
GROUP BY SourceOfJoining;

-- Corresponding to individual source of joining, give the minimum years of experience any person hold?
SELECT SourceOfJoining, MIN(YearsOfExperience) as min_years_exp
FROM LEARNERS
GROUP BY SourceOfJoining;

-- Corresponding to individual source of joining, give the average experience any person hold?
-- It makes sense as per the industry purpose
SELECT SourceOfJoining, AVG(YearsOfExperience) as avg_years_exp
FROM LEARNERS
GROUP BY SourceOfJoining;

-- Corresponding to individual source of joining, give the summation experience any person hold?
-- It does not makes sense
SELECT SourceOfJoining, SUM(YearsOfExperience) as avg_years_exp
FROM LEARNERS
GROUP BY SourceOfJoining;

-- Filteration is required on aggregation
-- after group by apply having clause
SELECT SourceOfJoining, COUNT(*) AS num_of_students  
FROM learners
GROUP BY SourceOfJoining
HAVING num_of_students > 1;

-- Insert two more enrollments in the learners table
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES ("Sidhish", "Kumar", '9998827776', "sidhish@gmail.com", '2024-01-21', 1, 4, "Amazon", "LinkedIn", '2024-02-29', "Gurugram");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES ("Kaneesha", "Mishra", '9128887776', "kaneesdfha@gmail.com", '2024-01-21', 1, 5, "Google", "LinkedIn", '2024-02-29', "Bengaluru");

-- Display the count of those students who joined via LinkedIn
SELECT SourceOfJoining, COUNT(*) AS num_of_students  
FROM learners
GROUP BY SourceOfJoining
Having SourceOfJoining = "LinkedIn";

--  Logical Operators => AND, OR, NOT, BETWEEN

-- Display the course which doesn't include "Excel"
SELECT * FROM course
WHERE CourseName NOT LIKE "%Excel%";

Update course set CourseName = "DSA For Interview Preparation" 
Where CourseID = 2;

-- Display the records of those students who have less than 4 years of experience and source of joining is youtube and location is Chennai
-- Mutiple constraints and all of them should be satisfied, then go for AND Operator in SQL
SELECT * FROM Learners
WHERE YearsOfExperience < 4 AND SourceOfJoining = "YouTube" AND Location = "Chennai";

--  Display the records of those students who have less than 4 years of experience or source of joining is youtube or location is Chennai
-- Mutiple constraints and any one of them should be satisfied, then go for OR Operator in SQL
SELECT * FROM Learners
WHERE YearsOfExperience < 4 OR SourceOfJoining = "YouTube" OR Location = "Chennai";

-- Display the records of those students who have years of experience between 1 to 4 years
Select * from Learners
Where YearsOfExperience Between 1 and 4;

-- ALTER COMMAND in SQL
DESC employee;
ALTER TABLE employee ADD column jobPosition varchar(50);
ALTER TABLE employee MODIFY column FirstName varchar(40);
ALTER TABLE employee DROP column jobPosition;

-- TRUNCATE in SQL
-- DELETE vs TRUNCATE Command in SQL --> Research


CREATE TABLE Course_Update(
CourseID INT AUTO_INCREMENT,
CourseName varchar(50) NOT NULL,
CourseDuration_Months DECIMAL(3,1) NOT NULL,
CourseFee INT NOT NULL,
Changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
PRIMARY KEY(CourseID));

INSERT INTO Course_Update(CourseName,CourseDuration_Months,CourseFee) Values("The Complete Excel Mastery Course",2.5,1499);
INSERT INTO Course_Update(CourseName,CourseDuration_Months,CourseFee) Values("DSA For Interview Preparation",2,4999);
INSERT INTO Course_Update(CourseName,CourseDuration_Months,CourseFee) Values("SQL Bootcamp",1,2999);
INSERT INTO Course_Update(CourseName,CourseDuration_Months,CourseFee) Values("Foundations of Machine Learning",3.5,4999);

Select * from Course_Update;
INSERT INTO Course_Update(CourseName,CourseDuration_Months,CourseFee) Values("Statistics for Data Science",1.5,3999);

UPDATE course_update SET CourseFee=3999
WHERE CourseID = 3
