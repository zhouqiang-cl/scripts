select d.Name, e.Name, e.Salary from department d, employee e where e.DepartmentId = d.Id and 3 > (select count(distinct Salary) from employee where e.Salary < employee.Salary and e.DepartmentId = employee.DepartmentId) order by e.Salary desc;
