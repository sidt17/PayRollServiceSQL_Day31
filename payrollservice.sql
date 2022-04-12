--UC1-Creating database
create database payrollservice_119

--UC2-Create table
create table Employee_payroll
(
Id int identity(1,1) primary key,
Name varchar(20),
Salary varchar(10),
StartDate varchar(20)
)
select * from Employee_payroll
