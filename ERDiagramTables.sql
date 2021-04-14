use payroll_service

create table Employee
(
Emp_Id int primary key identity(1,1),
Name varchar(50),
Phone_number varchar (30),
Address varchar (50),
Gender varchar (10)
);

insert into Employee Values('Bill','9999999999','Mumbai','M');
insert into Employee Values('Charlie','9979597989','Hyderabad','F');
insert into Employee Values('Terisa','9888999999','Pune','F');

select * from Employee;

create table Department
(
Dept_Id int primary key ,
Dept_Name varchar(30) not null,
Emp_Id int foreign key references Employee(Emp_Id)
);

insert into Department Values(1,'HR',1);
insert into Department values(2,'Developer','2');
insert into Department values (3,'Sales','3');
insert into Department values (4,'Marketing','3');

select * from Department

create table Emp_Department
(
Emp_Id int not null foreign key references Employee(Emp_Id),
Dept_Id int not null foreign key references Department(Dept_Id)
);
insert into Emp_Department values(1,1);
insert into Emp_Department values(2,2);
insert into Emp_Department values(3,3);
insert into Emp_Department values(3,4);
select * from Emp_Department;

create table Payroll
(
	Emp_Id int foreign key references Employee (Emp_ID),
	basic_pay money not null,
	deduction money,
	taxable_pay money,
	income_tax money,
	net_pay money not null
);
select * from Payroll;
insert into Payroll
(Emp_Id, basic_pay, deduction, taxable_pay, income_tax, net_pay) values
(01, 200000.00, 1500.00, 23000.00, 3000.00, 350000.00),
(02, 300000.00, 1500.00, 23000.00, 4000.00, 400000.00),
(03, 20300.00, 3500.00, 33000.00, 4500.00, 450000.00)

create table Company
(
	company_id int primary key,
	company_name varchar(20) not null default 'TBD'
);
select * from Company;

insert into Company values
(1, 'IBM'),
(2, 'Microsoft'),
(3, 'Oracal');

alter table Employee
add Company_Employee_Id int
references Company(company_id);

