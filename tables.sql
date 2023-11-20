CREATE DATABASE payroll;

USE payroll;

CREATE TABLE Department(
 Department_Id int,
 Department_Name VARCHAR(30),
No_of_employees int,
CONSTRAINT DEPARTMENT_PK PRIMARY KEY (Department_Id)
 );

create table total_employees (no_of_employees int);

CREATE TABLE Employee(
 Employee_Id INT(6),
 First_Name VARCHAR(25),
 Last_Name VARCHAR(25),
 Hire_Date DATE,
 City VARCHAR(25),
 State VARCHAR(25),
Department_id  INT,
 CONSTRAINT EMPLOYEE_PK PRIMARY KEY (Employee_Id),
 FOREIGN KEY (Department_id)
 REFERENCES Department(Department_id)
);

CREATE TABLE AccountDetails(
 Account_Id int,
 Bank_Name VARCHAR(50),
 Account_Number VARCHAR(50),
 Employee_Id INT,
 CONSTRAINT Account_PK PRIMARY KEY (Account_Id),
 FOREIGN KEY (Employee_Id)
 REFERENCES Employee(Employee_Id)
 );

CREATE TABLE Attendance(
 Attendance_Id int,
 Days_worked int,
No_of_leaves int,
Employee_id int,
CONSTRAINT Attendance_PK PRIMARY KEY (Attendance_Id),
FOREIGN KEY (Employee_Id)
 REFERENCES Employee(Employee_Id)
 );


CREATE TABLE Salary(
Salary_Id int,
Gross_Salary int,
perday int,
 State_Tax int,
 central_Tax int,
 Account_Id int,
Employee_id int,
 CONSTRAINT SALARY_PK PRIMARY KEY (Salary_Id),
 FOREIGN KEY (Account_Id)
 REFERENCES ACCOUNTDETAILS(Account_Id),
FOREIGN KEY (Employee_id)
 REFERENCES Employee(employee_id) );

