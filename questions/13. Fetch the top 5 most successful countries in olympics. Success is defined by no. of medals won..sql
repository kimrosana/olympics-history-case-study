# 13. Fetch the top 5 most successful countries in olympics. Success is defined by no of medals won.

select 
    noc,
    total_medals,
    row_number() over (order by total_medals desc) as ranking
from
	(select
        noc,
        count(medal) as total_medals
    from
        olympics_numbers.athlete_events
    where
        medal in ('Gold', 'Silver', 'Bronze')
    group by
        noc
    order by
        total_medals desc
    limit 5)
    as top_nocs;