alter table employee_payroll add phone_number varchar(250);

alter table employee_payroll add address varchar(250) not null default 'Mumbai';

alter table employee_payroll add department varchar(150) ;

select * from employee_payroll;
