# 3. Mention the total no of nations who participated in each olympics game?

with total_each_nation as
		(select games, 
			nr.region
	from
		olympics_numbers.athlete_events as ae
	join
		olympics_numbers.noc_regions as nr
        on
        ae.noc=nr.noc)
select
	games,
    count(distinct region) as total_nations
from
	total_each_nation
group by
	games
order by
	games;