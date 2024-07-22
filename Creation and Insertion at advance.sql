Show databases;
use mysqlbootcamp;

-- Create a table by the name of courses having field 
-- named "CourseID", "CourseName", "Course_duration_months", "CourseFee"

CREATE TABLE Course(
CourseID INT AUTO_INCREMENT,
CourseName varchar(50) NOT NULL,
CourseDuration_Months INT NOT NULL,
CourseFee INT NOT NULL,
PRIMARY KEY(CourseID)
);

DESC Course;

-- Insert the course details inside the table named courses
-- "The Complete Excel Mastery Course", 3, 1499
-- "DSA for Interview Preparation", 2, 4999
-- "SQL Bootcamp", 1, 2999

INSERT INTO Course(CourseName,CourseDuration_Months,CourseFee) Values("The Complete Excel Mastery Course",3,1499);
INSERT INTO Course(CourseName,CourseDuration_Months,CourseFee) Values("DSA For Interview Preparation",2,4999);
INSERT INTO Course(CourseName,CourseDuration_Months,CourseFee) Values("SQL Bootcamp",1,2999);

Select * from Course;

CREATE TABLE Learners(
	Learner_Id INT AUTO_INCREMENT,
	LearnerFirstName VARCHAR(50) NOT NULL,
	LearnerLastName VARCHAR(50) NOT NULL,
	LearnerPhoneNo VARCHAR(15) NOT NULL,
	LearnerEmailID VARCHAR(50),
	LearnerEnrollmentDate TIMESTAMP NOT NULL,
	SelectedCourses INT NOT NULL,
	YearsOfExperience INT NOT NULL,
	LearnerCompany VARCHAR(50),
	SourceOfJoining VARCHAR(50) NOT NULL,
	Batch_Start_Date TIMESTAMP NOT NULL,
	Location VARCHAR(50) NOT NULL,
	PRIMARY KEY(Learner_Id), -- value must be unique and not-null
	UNIQUE KEY(LearnerEmailID), -- value must be unique but may be null
	FOREIGN KEY(SelectedCourses) REFERENCES Course(CourseID) -- referencing to the courseId in course table
);

Desc Learners;

INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES ("Akash", "Mishra", '9998887776', "akash@gmail.com", '2024-01-21', 1, 4, "Amazon", "LinkedIn", '2024-02-29', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES("Rishikesh","Joshi","9950192388", "carjkop@gmail.com", '2024-03-19', 3, 2, "HCL", "Youtube", '2024-03-25', "Chennai");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES("Jeevan","Hegde", "9657856732","jeevanhegdek@yahoo.co.in", '2024-01-15', 2, 0, "", "Linkedin", '2024-01-16', "Noida");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES("Akhil","George","7689558930", "akhil.george.8743@gmail.com", '2024-03-13', 3, 4, "Accenture", "Community", '2024-03-25', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location)VALUES("Sidhish","Kumar","6475765443", "sidhishkumar@gmail.com",'2024-01-10', 1, 4, "Meta", "Youtube", '2024-03-29', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNo,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,Batch_Start_Date,Location) VALUES("NagaSai","Sreedhar","9182937061", "saisreedhar2001@gmail.com", '2024-03-17', 3, 4, "TCS", "Community", '2024-03-25', "Mumbai");

Select * from Learners;