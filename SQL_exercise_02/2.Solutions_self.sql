1;
SELECT  lastname from employees ;
2;
SELECT distinct(lastname) from employees ;
3;
select employees.*, departments.name dept, departments.budget dept_budget
from employees
JOIN departments
on (employees.department = departments.code)
where employees.lastname='Smith' ;
4;
select employees.*, departments.name dept, departments.budget dept_budget
from employees
JOIN departments
on (employees.department = departments.code)
where employees.lastname in ('Smith', 'Doe');
5;
select * from employees where department=14 ;
6;
select * from employees where department in (37, 77) ;
7;
select * from employees where lastname like'S%' ;
8;
select sum(budget) from departments ;
9;
SELECT count(employees.ssn) ,departments.code
from employees
join departments
on (employees.department = departments.code) 
group by employees.department ;

10;
select employees.*, departments.name as dept
from employees
JOIN departments
on (employees.department = departments.code) ;
11;
select employees.name, employees.lastname, departments.name dept, departments.budget
from employees
join departments
on (employees.department = departments.code) ;
12;
select employees.name, employees.lastname
from employees
join departments
on (employees.department = departments.code)
where departments.budget >=60000 ;

/* With subquery*/
--  With subquery
select name, lastname
from employees
where department IN
    (select code from departments where budget >=60000) ;
13;
select name from departments
where budget>
    (
        select AVG(budget) from departments
    ) ;
14;
SELECT department, departments.name, count(ssn)
from employees
join departments
on (employees.department = departments.code)
group by department 
having COUNT(employees.ssn) > 2 ;

-- using subquery, but it doesnot yield name of employees
select departments.name
from departments
where code in
    (
        select department from employees
        group by department
        having count(ssn) > 2
    ) ;
15;
select name, lastname, department
from employees
where department in 
    (select code from departments
    where budget = 
        (select MAX(budget) from 
            (select budget from departments order by budget ASC limit 2) as T
        )
    ) ;
16;
 insert into departments(code, name, budget) VALUES (11, 'Quality Assurance', 40000) ;
17;
UPDATE departments set budget=budget*0.9 ;
18;
update employees set department=14 where department=77 ;
19;
delete from employees  where department=14 ;
20;
delete from employees where employees.name in
    (select * from 
        (SELECT employees.name from employees
        join departments
        on (employees.department = departments.code)
        where departments.budget>=60000) as t);
21;
-- for also rollingback functionality test
set autocommit=0
start transaction
delete from employees 
rollback ;