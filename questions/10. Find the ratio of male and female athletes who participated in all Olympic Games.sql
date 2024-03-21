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
	6;
    
## specifically limited to 6 because from row 7 on there's a different 'total_medals' result;
## so in fairness all 4 athletes who received a total of 9 medals should appear in the results