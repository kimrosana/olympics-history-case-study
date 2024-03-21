# 20. Break down all olympic games where Brazil won medals for Soccer

select
	distinct games,
    team,
    city,
    sport,
    event,
    medal
from
	olympics_numbers.athlete_events
where
	sport like 'Football'
    and
    region = 'Brazil'
    and
    medal != 'na'
group by
	games,
    team,
    city,
    sport,
    event,
    medal
order by
	games;