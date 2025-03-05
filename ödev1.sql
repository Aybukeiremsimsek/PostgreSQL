--question1
select * from employees;

-- question 2
select firstname from employees;
select lastname from employees;
select salary from employees;

-- question 3
select distinct departmentid from employees;

-- question 4
select * from employees
where departmentid = 1;

-- question 5
select * from employees
order by salary desc;

-- question 6 
select firstname ||':'|| lastname as Fullname from employees;

