--UC1-Creating database
create database payrollservice_119

--UC2-Create table
create table Employee_payroll
(
Id int identity(1,1) primary key,
Name varchar(20),
Salary varchar(255),
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

--UC6-Add gender in employee payroll table
alter table Employee_payroll
 add Gender varchar(10);
update Employee_payroll 
set Gender = 'M'
 where  Name='Rahul' or Name = 'Sid'

update Employee_payroll 
set Gender = 'F' 
where  Name='Priyanka' or Name = 'Akansha'

--UC7-Find sum,avg, min, max,number of male and female employees
create table Employee_payroll
(
Id int identity(1,1) primary key,
Name varchar(20),

StartDate varchar(20)
)
select * from Employee_payroll

insert into Employee_payroll values ('Rahul','2018-01-01')
insert into Employee_payroll values ('Sid','2020-01-01')
insert into Employee_payroll values ('Priyanka','2021-01-01')
insert into Employee_payroll values ('Akansha','2022-01-01')

alter table Employee_payroll
add Salary int

 update Employee_payroll
 set Salary = 20000
 where Id = 2 or Id =4

  update Employee_payroll
 set Salary = 15000
 where Id = 1 or Id =3

select SUM(Salary) as Sumofsalary from Employee_payroll;
select Avg(Salary) as Avgofsalary from Employee_payroll;
select MIN(Salary) as Minofsalary from Employee_payroll;
select MAX(Salary) as Maxofsalary from Employee_payroll;
select count(Id) from Employee_payroll;
select count(Id) as NoOfPeople,Gender from Employee_payroll group by Gender;

--UC8- Extend table to store information like employee phone, address and department
alter table Employee_payroll add PhoneNo bigint;
alter table Employee_payroll add Address varchar(250) not null default 'Mumbai';
alter table Employee_payroll add Department varchar(250) not null default 'Testing';
select * from Employee_payroll;

--UC9-extend employee payroll table to have basic pay, deductions,taxable pay,income tax,net pay
alter table Employee_payRoll
add Deduction float,TaxablePay float,IncomeTax float,NetPay float;

--UC10-Adding Department of Terisa as Sales & Marketing Both
alter table Employee_payroll
drop column Salary;
 Update Employee_payroll set 
 PhoneNo=9992388877 , Department='Sales', Deduction=1450, TaxablePay=500, IncomeTax=1000, NetPay=30000 where name='Rahul'
 Update employee_payroll set 
 PhoneNo=9285548899 , Department='Finance', Deduction=1000, TaxablePay=500, IncomeTax=1200, NetPay=38000 where name='Sid'
 Update employee_payroll set 
 PhoneNo=7877678544 , Department='Testing', Deduction=1500, TaxablePay=500, IncomeTax=1000, NetPay=45000 where name='Priyanka'
 Update employee_payroll set 
 PhoneNo=9956443452 , Department='Marketing', Deduction=1780, TaxablePay=500, IncomeTax=1400, NetPay=28000 where name='Akansha'

 insert into Employee_payroll values('Terissa','2022-03-01','F','Mumbai','Sales',680,500,1000,44000,8787989854)
 insert into Employee_payroll values('Terissa','2022-02-01','F','Mumbai','Marketing', 800,500,1000,42200,9965875465)
 select * from Employee_payroll;