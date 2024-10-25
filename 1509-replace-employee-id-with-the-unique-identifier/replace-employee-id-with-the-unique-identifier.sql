# Write your MySQL query statement below
select employeeUNI.unique_id, employees.name from Employees left join EmployeeUNI on employeeUNI.id=employees.id