-- question 1
select firstname,lastname,salary from employees;

-- question 2
select distinct departmentid from employees;
--

-- question 3
select * from employees
where departmentid = 1;

-- question 4
select * from employees
order by salary desc;

-- question 5
select firstname ||':'|| lastname as Fullname from employees;
