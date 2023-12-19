/* Write your T-SQL query statement below */
with cte as
(
	select
		id, num, lead(num, 1) over(order by id) as lead_num,
		lag(num, 1) over(order by id) as lag_num
	from Logs
)
select
	distinct num as "ConsecutiveNums"
from cte
where lead_num = num and num = lag_num