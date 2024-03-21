# 12. Fetch the top 5 athletes who have won the most medals (gold/silver/bronze).

select
	name,
    sex,
    noc,
	count(medal) as total_medals
from
	olympics_numbers.athlete_events
where
	medal = 'Gold'
    or
    medal = 'Silver'
    or
    medal = 'Bronze'
group by
	name,
    sex,
    noc
order by
	total_medals desc
limit
	7;

## specifically limited to 7 because from 8 rows on there's a different total_medals result;
## so in fairness all 4 athletes who received a total of 13 medals should appear in the results