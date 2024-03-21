# 8. Fetch the total no of sports played in each olympic games.

select
	distinct games,
    count(distinct sport) as total_sports
from
	olympics_numbers.athlete_events
where
	games LIKE '%Summer' or games LIKE '%Winter'
group by
	games
order by
	total_sports desc,
    games;