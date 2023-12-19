/* Write your T-SQL query statement below */
select
	a.name
from Employee a
inner join Employee b on a.id = b.managerid
group by a.id, a.name
having count(distinct b.id) >= 5