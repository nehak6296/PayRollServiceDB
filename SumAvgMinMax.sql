use payroll_service


select sum(salary) as 'SumSalary' from employee_payroll  where gender='F' group by gender

select avg(salary) as ' AverageSalary' from employee_payroll group by gender

select min(salary) from employee_payroll 

select count(gender) from employee_payroll where gender = 'M'