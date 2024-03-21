# 15. List down total gold, silver and bronze medals won by each country corresponding to each olympic games.

select
    games,
    region,
    sum(case when medal = 'Gold' then 1 else 0 end) as total_gold,
    sum(case when medal = 'Silver' then 1 else 0 end) as total_silver,
    sum(case when medal = 'Bronze' then 1 else 0 end) as total_bronze,
    sum(case when medal = 'Gold' or medal = 'Silver' or medal = 'Bronze' then 1 else 0 end) as total_medals
from
    olympics_numbers.athlete_events
where
    medal in ('Gold', 'Silver', 'Bronze')
group by
    games,
    region
order by
	games;