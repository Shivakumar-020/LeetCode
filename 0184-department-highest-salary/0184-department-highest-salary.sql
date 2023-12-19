/* Write your T-SQL query statement below */
with cte as
(
	select
		b.name as "Department", a.name as "Employee", a.salary as "Salary",
		dense_rank() over(partition by b.name order by a.salary desc) as rnk
	from Employee a
	inner join Department b on a.departmentid = b.id
)
select
	Department, Employee, Salary
from cte
where rnk = 1