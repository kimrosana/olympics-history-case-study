# 19. In which sport has Brazil won highest medals?

select
    sport,
    count(*) as medalcount
from
    olympics_numbers.athlete_events as ae
where
	region = 'Brazil'
    and medal != 'NA'
group by
    sport
order by
	medalcount desc
limit
	1;

# 19.extra. In which event has Brazil won highest medals?

select
	sport,
    event,
    count(*) as medalcount
from
	olympics_numbers.athlete_events
where
	region = 'Brazil'
    and medal != 'NA'
group by
	sport,
    event
order by
	medalcount desc
limit
	1;
    
## the result here is different (136 in the first query x 101 in the second) because the other football event where 35 athletes won medals was the women's football event
## the second query's result is the men's football with 101 medals