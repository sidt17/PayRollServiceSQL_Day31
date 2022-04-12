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

--UC3 Inserting Values into Table
insert into Employee_payroll values ('Rahul','25,000','2018-01-01')
insert into Employee_payroll values ('Sid','45,000','2020-01-01')
insert into Employee_payroll values ('Priyanka','40,000','2021-01-01')
insert into Employee_payroll values ('Akansha','50,000','2022-01-01')

--UC4-Retrievieving employee payroll data
select * from Employee_payroll

--UC5-Retrive data for particular table
select Salary from Employee_payroll where Name='Bill';
select * from Employee_payroll where  StartDate between CAST('2018/01/01' as date) and getdate();