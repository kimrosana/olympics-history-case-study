# 9. Fetch oldest athletes to win a gold medal

select
	*
from
	olympics_numbers.athlete_events
where
	age =
		(select
			max(age)
		from
			olympics_numbers.athlete_events
		where
			Medal = 'Gold'
            and
            age not like 'NA'
		)
	and
		Medal = 'Gold';