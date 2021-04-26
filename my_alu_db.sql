/* Creating Database */
CREATE DATABASE my_alu_db;

/* Creating Entities */

-- Address Table
CREATE TABLE my_alu_db.Address (
    Address_ID int NOT NULL PRIMARY KEY,
    Country varchar(50) NOT NULL,
    City varchar(50) NOT NULL,
    Street varchar(50),
    House int
);

-- Department Table
CREATE TABLE my_alu_db.Department (
    Department_ID int NOT NULL PRIMARY KEY,
    Department_Name varchar(50),
    Number_Of_Faculty int
);

-- Staff Table
CREATE TABLE my_alu_db.Staff (
    Staff_ID int NOT NULL PRIMARY KEY,
    First_Name varchar(50) NOT NULL,
    Last_Name varchar(50) NOT NULL,
    Staff_Position varchar(100) NOT NULL,
    Address_ID int,
    FOREIGN KEY (Address_ID) REFERENCES my_alu_db.Address(Address_ID)
);

-- Facilitator Table
CREATE TABLE my_alu_db.Facilitator (
    Facilitator_ID int NOT NULL PRIMARY KEY,
    First_Name varchar(50) NOT NULL,
    Last_Name varchar(50) NOT NULL,
    Email varchar(100) NOT NULL,
    Gender varchar(20) NOT NULL,
    Birth_date date NOT NULL,
    Address_ID int,
    Department_ID int,
    Staff_ID int,
    FOREIGN KEY (Address_ID) REFERENCES my_alu_db.Address(Address_ID),
    FOREIGN KEY (Department_ID) REFERENCES my_alu_db.Department(Department_ID),
    FOREIGN KEY (Staff_ID) REFERENCES my_alu_db.Staff(Staff_ID)
);

-- Club Tables
CREATE TABLE my_alu_db.Club (
    Club_ID int NOT NULL PRIMARY KEY,
    Club_Name varchar(100),
    Number_Of_Members int,
    Facilitator_ID int,
    Department_ID int,
    FOREIGN KEY (Facilitator_ID) REFERENCES my_alu_db.Facilitator(Facilitator_ID),
    FOREIGN KEY (Department_ID) REFERENCES my_alu_db.Department(Department_ID)
);

-- Degree Program Table
CREATE TABLE my_alu_db.Degree_Program (
    Degree_ID int NOT NULL PRIMARY KEY,
    Degree_Name varchar(100) NOT NULL,
    Degree_Duration int,
    Department_ID int,
    FOREIGN KEY (Department_ID) REFERENCES my_alu_db.Department(Department_ID)
);

-- Course Table
CREATE TABLE my_alu_db.Course (
    Course_ID int NOT NULL PRIMARY KEY,
    Course_Name varchar(100) NOT NULL,
    Year_Taught int NOT NULL,
    Term_Taught int NOT NULL,
    Degree_ID int,
    Facilitator_ID int,
    FOREIGN KEY (Degree_ID) REFERENCES my_alu_db.Degree_Program(Degree_ID),
    FOREIGN KEY (Facilitator_ID) REFERENCES my_alu_db.Facilitator(Facilitator_ID)
);

-- Student Table
CREATE TABLE my_alu_db.Student (
    Student_ID int NOT NULL PRIMARY KEY,
    First_Name varchar(50) NOT NULL,
    Last_Name varchar(50) NOT NULL,
    Email varchar(100) NOT NULL,
    Gender varchar(20) NOT NULL,
    Birthdate date NOT NULL,
    Course_ID int,
    Address_ID int,
    FOREIGN KEY (Course_ID) REFERENCES my_alu_db.Course(Course_ID),
    FOREIGN KEY (Address_ID) REFERENCES my_alu_db.Address(Address_ID)
);

-- Grade Table
CREATE TABLE my_alu_db.Grade (
    Grade_ID int NOT NULL PRIMARY KEY,
    GPA int NOT NULL,
    Passed BOOL,
    Student_ID int,
    FOREIGN KEY (Student_ID) REFERENCES my_alu_db.Student(Student_ID)
);


/* Inserting entries into Tables */

-- Inserting entries into Address table
INSERT INTO my_alu_db.Address VALUES (1, 'Rwanda', 'Kigali', 'KG-1', 6);
INSERT INTO my_alu_db.Address VALUES (2, 'Rwanda', 'Kigali', 'KG-2', 13);
INSERT INTO my_alu_db.Address VALUES (3, 'Rwanda', 'Kigali', 'KG-3', 7);
INSERT INTO my_alu_db.Address VALUES (4, 'Rwanda', 'Kigali', 'KG-4', 1);
INSERT INTO my_alu_db.Address VALUES (5, 'Rwanda', 'Kigali', 'KG-5', 3);
INSERT INTO my_alu_db.Address VALUES (6, 'Rwanda', 'Kigali', 'KG-6', 9);
INSERT INTO my_alu_db.Address VALUES (7, 'Rwanda', 'Kigali', 'KG-7', 10);
INSERT INTO my_alu_db.Address VALUES (8, 'Rwanda', 'Kigali', 'KG-8', 16);
INSERT INTO my_alu_db.Address VALUES (9, 'Rwanda', 'Kigali', 'KG-9', 2);
INSERT INTO my_alu_db.Address VALUES (10, 'Rwanda', 'Kigali', 'KG-10', 4);

-- Inserting entries into Department table
INSERT INTO my_alu_db.Department VALUES (1, 'Humanities', 10);
INSERT INTO my_alu_db.Department VALUES (2, 'Enterpreneurship', 5);
INSERT INTO my_alu_db.Department VALUES (3, 'Global Academics', 15);
INSERT INTO my_alu_db.Department VALUES (4, 'Robotics and Automation', 6);
INSERT INTO my_alu_db.Department VALUES (5, 'Business and Finance', 20);
INSERT INTO my_alu_db.Department VALUES (6, 'Computing', 30);
INSERT INTO my_alu_db.Department VALUES (7, 'Chemical Engineering', 10);
INSERT INTO my_alu_db.Department VALUES (8, 'Architecture', 5);
INSERT INTO my_alu_db.Department VALUES (9, 'Applied Physics and Mathematics', 10);
INSERT INTO my_alu_db.Department VALUES (10, 'Africana Studies', 10);

-- Inserting entries into Staff table
INSERT INTO my_alu_db.Staff VALUES (1, 'Jame', 'Williams', 'Facilitator', 1);
INSERT INTO my_alu_db.Staff VALUES (2, 'Gwen', 'Tembo', 'accountant', 2);
INSERT INTO my_alu_db.Staff VALUES (3, 'Dorothy', 'Tutamu', 'accountant', 3);
INSERT INTO my_alu_db.Staff VALUES (4, 'Donart', 'Ngarambe', 'Facilitator', 4);
INSERT INTO my_alu_db.Staff VALUES (5, 'Anderson', 'James', 'Engineer', 5);
INSERT INTO my_alu_db.Staff VALUES (6, 'Dave', 'Banda', 'Facilitator', 6);
INSERT INTO my_alu_db.Staff VALUES (7, 'Obed', 'Nsya', 'Facilitator', 7);
INSERT INTO my_alu_db.Staff VALUES (8, 'Ruth', 'Chin', 'accountant', 8);
INSERT INTO my_alu_db.Staff VALUES (9, 'David', 'Lastman', 'Chemisty', 9);
INSERT INTO my_alu_db.Staff VALUES (10, 'Ellen', 'Doe', 'Facilitator', 10);

-- Inserting entries into Facilitator table
INSERT INTO my_alu_db.Facilitator VALUES (1, 'Ruti', 'Dolphin', 'ruti@alueducation.com', 'Male', '1985-04-01', 1, 1, 1);
INSERT INTO my_alu_db.Facilitator VALUES (2, 'Thadee', 'Gatera', 'thadee@alueducation.com', 'Male', '1987-02-01', 2, 1, 2);
INSERT INTO my_alu_db.Facilitator VALUES (3, 'Robert', 'Wekesa', 'robert@alueducation.com', 'Male', '1985-03-01', 3, 1, 3);
INSERT INTO my_alu_db.Facilitator VALUES (4, 'Donart', 'Ngarambe', 'donart@alueducation.com', 'Male', '1964-06-01', 4, 1, 4);
INSERT INTO my_alu_db.Facilitator VALUES (5, 'Lucy', 'Cherono', 'lucy@alueducation.com', 'Female', '1985-05-01', 5, 1, 5);
INSERT INTO my_alu_db.Facilitator VALUES (6, 'Clovis', 'Doe', 'clovis@alueducation.com', 'Male', '1989-01-01', 6, 1, 6);
INSERT INTO my_alu_db.Facilitator VALUES (7, 'Obed', 'Nsya', 'obed@alueducation.com', 'Male', '1992-07-01', 7, 1, 7);
INSERT INTO my_alu_db.Facilitator VALUES (8, 'Ellen', 'Doe', 'ellen@alueducation.com', 'Female', '1973-08-01', 8, 1, 8);
INSERT INTO my_alu_db.Facilitator VALUES (9, 'Jame', 'Williams', 'williams@alueducation.com', 'Male', '1990-09-01', 9, 1, 9);
INSERT INTO my_alu_db.Facilitator VALUES (10, 'Dave', 'Banda', 'dave@alueducation.com', 'Male', '1981-01-01', 10, 1, 10);

-- Inserting entries into Clubs table
INSERT INTO my_alu_db.Club VALUES (1, 'Robotics and AI Club', 10, 1, 1);
INSERT INTO my_alu_db.Club VALUES (2, 'IoT Junoirs', 11, 2, 1);
INSERT INTO my_alu_db.Club VALUES (3, 'LEAP Club', 12, 3, 1);
INSERT INTO my_alu_db.Club VALUES (4, 'Diversity Club', 13, 4, 2);
INSERT INTO my_alu_db.Club VALUES (5, 'Consulting Club', 14, 5, 2);
INSERT INTO my_alu_db.Club VALUES (6, 'Community Service Lab', 15, 6, 1);
INSERT INTO my_alu_db.Club VALUES (7, 'Women & Children’s health Society', 16, 7, 3);
INSERT INTO my_alu_db.Club VALUES (8, 'Books Sharing Society', 17, 8, 4);
INSERT INTO my_alu_db.Club VALUES (9, 'Model United Nations', 18, 9, 4);
INSERT INTO my_alu_db.Club VALUES (10, 'Debating Club', 19, 10, 4);

-- Inserting entries into Degree Program table
INSERT INTO my_alu_db.Degree_Program VALUES (1, 'Computer Science', 4, 1);
INSERT INTO my_alu_db.Degree_Program VALUES (2, 'Global Challenges', 4, 2);
INSERT INTO my_alu_db.Degree_Program VALUES (3, 'International Business & Trade', 6, 1);
INSERT INTO my_alu_db.Degree_Program VALUES (4, 'Machinery & Engineering', 6, 1);
INSERT INTO my_alu_db.Degree_Program VALUES (5, 'Chemical Engineering', 1, 1);
INSERT INTO my_alu_db.Degree_Program VALUES (6, 'Accounts & Finance', 1, 1);
INSERT INTO my_alu_db.Degree_Program VALUES (7, 'Robotics', 1, 1);
INSERT INTO my_alu_db.Degree_Program VALUES (8, 'Africana Science', 1, 1);
INSERT INTO my_alu_db.Degree_Program VALUES (9, 'Social Science', 3, 1);
INSERT INTO my_alu_db.Degree_Program VALUES (10, 'Entreprenuership', 1, 1);

-- Inserting entries into Course table
INSERT INTO my_alu_db.Course VALUES (1, 'Data Mining', 4, 2, 1, 1);
INSERT INTO my_alu_db.Course VALUES (2, 'Databases Systems', 2, 1, 1, 9);
INSERT INTO my_alu_db.Course VALUES (3, 'Programming I - Python', 2, 1, 1, 8);
INSERT INTO my_alu_db.Course VALUES (4, 'Programming II - Java', 2, 2, 1, 8);
INSERT INTO my_alu_db.Course VALUES (5, 'Advanced Databases', 4, 2, 3, 10);
INSERT INTO my_alu_db.Course VALUES (6, 'Micro Economics', 3, 1, 3, 10);
INSERT INTO my_alu_db.Course VALUES (7, 'Data & Decision', 2, 1, 6, 10);
INSERT INTO my_alu_db.Course VALUES (8, 'Chemistry', 3, 1, 1, 5);
INSERT INTO my_alu_db.Course VALUES (9, 'Advance Physics', 4, 1, 1, 2);
INSERT INTO my_alu_db.Course VALUES (10, 'Networks', 4, 2, 1, 2);

-- Inserting entries into Student table
INSERT INTO my_alu_db.Student VALUES (1, 'Anthony', 'Sakala', 'asakala@alustudent.com', 'Male', '1996-01-01', 1, 1);
INSERT INTO my_alu_db.Student VALUES (2, 'David', 'Masupa', 'dmasupa@alustudent.com', 'Male', '1998-04-01', 1, 1);
INSERT INTO my_alu_db.Student VALUES (3, 'Musa', 'Sherif', 'msherif@alustudent.com', 'Male', '1995-02-01', 1, 1);
INSERT INTO my_alu_db.Student VALUES (4, 'Ephraim', 'Mulilo', 'emulilo@alustudent.com', 'Male', '1999-05-01', 2, 1);
INSERT INTO my_alu_db.Student VALUES (5, 'Diane', 'Kwizera', 'dkwizera@alustudent.com', 'Female', '1996-05-01', 2, 1);
INSERT INTO my_alu_db.Student VALUES (6, 'Mamady', 'Kante', 'mkante@alustudent.com', 'Male', '1997-08-01', 2, 2);
INSERT INTO my_alu_db.Student VALUES (7, 'Judith', 'Chatiza', 'jchatiza@alustudent.com', 'Female', '1999-07-01', 3, 2);
INSERT INTO my_alu_db.Student VALUES (8, 'Bennedict', 'Okolie', 'bokolie@alustudent.com', 'Male', '1999-09-01', 3, 3);
INSERT INTO my_alu_db.Student VALUES (9, 'Samiratu', 'Ntohsi', 'sntohsi@alustudent.com', 'Female', '1998-05-01', 3, 3);
INSERT INTO my_alu_db.Student VALUES (10, 'Jamaima', 'Tembo', 'jtembo@alustudent.com', 'Female', '1995-10-01', 4, 3);
