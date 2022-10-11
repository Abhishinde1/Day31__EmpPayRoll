------  UC1 creating database-----

create database  Employee_Payroll

use Employee_Payroll

------- UC2 create table ----------
 select * from Employee_Payroll
 create table Employee_Payroll
 (
 Id int identity(1,1) primary key  ,name varchar(250), salary float , StartDate date ,     
 )

 -------UC3 Crud Operation-------
 insert into Employee_Payroll (name,salary,StartDate)values('Abhi', 35000, '2022-10-11');
 insert into Employee_Payroll (name,salary,StartDate)values('sunny', 20000, '2022-10-1');
 insert into Employee_Payroll (name,salary,StartDate)values('Abhishek', 35000, '2022-10-5');
  insert into Employee_Payroll (name,salary,StartDate)values('yogita', 11000, '2022-10-10');


 -----UC4  Retrive All Data--------
 
select * from Employee_Payroll  ----to show all Data

-----UC5 Retrive salary data of Particular Employee-------

select * from Employee_Payroll
where id=1 and name= 'Abhi'

-----UC6 Add Gender And Update the Rows------

select * from Employee_Payroll
alter table Employee_Payroll
add Gender char(1)

update Employee_Payroll set salary=40000 where Id = 1
update Employee_Payroll set Gender ='M' where Id = 1
update Employee_Payroll set Gender ='M' where Id = 2
update Employee_Payroll set Gender ='M' where Id = 3
update Employee_Payroll set Gender ='F' where Id = 8

-----UC7 find sum,min,max,number-------
select sum(Salary) as TotalSalary,Gender from Employee_Payroll group by Gender; ---it is use to find the Sum Gender Wise
select Max(Salary) as MaxSalary,Gender from Employee_Payroll group by Gender;
select Min(Salary) as MaxSalary,Gender from Employee_Payroll group by Gender;
select Avg(Salary) as  AvgSalary,Gender from Employee_Payroll group by Gender;
select Gender, COUNT(Gender) from Employee_Payroll group by Gender;





