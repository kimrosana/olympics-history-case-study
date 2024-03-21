# 11. Fetch the top 5 athletes who have won the most gold medals.

select
	name,
    sex,
    noc,
    sport,
	count(medal) as total_gold_medal
from
	olympics_numbers.athlete_events
where
    medal = 'Gold'
group by
	name,
    sex,
    noc,
    sport
order by
	total_gold_medal desc
limit
	5;