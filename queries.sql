Select first_name from employee where (hire_date>'2023-01-01') group by department_id;

update employee set city="bengaluru",state="karnataka" where Employee_id="101";

alter table department drop no_of_Employees;

Create view abavg
As
Select e.first_name , s.Gross_Salary from employee e inner join salary s on e.employee_id=s.employee_id;
select * from abavg where gross_salary>(select avg(gross_salary) from abavg);

create or replace view used_paid_leaves
     as
     select e.first_name,e.last_name from employee e
     inner join attendance a on a.employee_id=e.employee_id
     where a.no_of_leaves>3;

DELIMITER $$
 CREATE TRIGGER empno
     AFTER INSERT on employee
     for each row
    begin
    update total_employees e
    set e.no_of_employees=e.no_of_employees+1;
    end $$

create table total_employees (no_of_employees int);