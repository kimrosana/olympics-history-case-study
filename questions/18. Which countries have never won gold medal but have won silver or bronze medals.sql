# 18. Which countries have never won gold medal but have won silver or bronze medals?

select
	region,
	sum(case when medal = 'Gold' then 1 else 0 end) as Sum_Gold,
    sum(case when medal = 'Silver' then 1 else 0 end) as Sum_Silver,
    sum(case when medal = 'Bronze' then 1 else 0 end) as Sum_Bronze,
    sum(case when medal != 'NA' then 1 else 0 end) as Total_Medals
from
	olympics_numbers.athlete_events
group by
	region
having
	Sum_Gold = 0 and
    (Sum_Silver > 1 or Sum_Bronze > 1)
order by
	region;