# 2. list down all Olympic games held so far

select
	distinct games,
    city
from
	olympics_numbers.athlete_events
order by
	games;