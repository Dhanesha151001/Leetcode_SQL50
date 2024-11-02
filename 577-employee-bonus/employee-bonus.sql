# Write your MySQL query statement below
select employee.name, bonus.bonus from employee 
left join bonus on employee.empId=bonus.empId where bonus is null or bonus < 1000  