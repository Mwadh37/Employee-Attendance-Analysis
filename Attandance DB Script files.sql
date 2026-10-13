Create database EmployeeAttendanceDB;  

-- Create First Table 
create Table Employees(
EmpID INT PRIMARY KEY ,
EmployeeName Varchar(100) ,
Department Varchar(50)); 

/* insert Sample Data into the Employees Table */

insert into Employees  values 
('1','Ahmed Ali','IT'),
('2','Mohamed Saeed','Operations'),
('3','Khaled Youssef','HR'),
('4','Sarah Hussein','HR'),
('5','Laila Mahmoud','IT'),
('6','Nour El-Din Omar','HR'),
('7','Mona Khaled','HR'),
('8','Ziad Samir','Sales'),
('9','Jana Adel','IT'),
('10','Hani Ahmed','HR'),
('11','Maha Abdullah','HR'),
('12','Fatima Zahra','Finance'),
('13','Alaa Abdelkarim','Operations'),
('14','Nora Fouad','HR'),
('15','Salman Ali','Sales'),
('16','Rana Hatim','HR'),
('17','Basem Nasser','HR'),
('18','Jameela Kamal','Operations'),
('19','Tawfiq Sami','Operations'),
('20','Nader Emad','Finance');

Select * from Employees 

/*
  The Attendance and Leave tables were not created manually using CREATE TABLE.
  Instead, due to the large amount of data, I used the "Import Flat File" feature in SSMS
  to automatically generate both the table structure and insert the data efficiently.
*/

/* After the import, I manually added the foreign key constraint to link the EmpID 
  in both Attendance and Leave tables to the Employees table */ 

ALTER TABLE Attendance 
ADD CONSTRAINT FK_Attendance_Employees
FOREIGN KEY (EmpID) REFERENCES Employees(EmpID);

Select * from Attendance

ALTER TABLE Leaves
ADD CONSTRAINT FK_Leaves_Employees
FOREIGN KEY (EmpID) REFERENCES Employees(EmpID);

Select * from Leaves

