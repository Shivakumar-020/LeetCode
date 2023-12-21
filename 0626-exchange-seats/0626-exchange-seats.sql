select
	case
		when id%2 = 1 and (select max(id) from seat) = id then id
		when id%2 = 1 then id+1
		when id%2 = 0 then id-1
	end as id,
	student
from seat
order by id