select * from sys.databases

create database payroll_service

use payroll_service

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(20) not null,
salary money not null,
start date not null
);
