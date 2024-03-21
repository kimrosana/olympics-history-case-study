## 6. Identify the sport which was played in all summer olympics.

SELECT
    sport,
    COUNT(DISTINCT Games) as total_games
FROM
    olympics_numbers.athlete_events
GROUP BY
    sport
HAVING
    total_games = (
        SELECT
            COUNT(DISTINCT Games)
        FROM
            olympics_numbers.athlete_events
        WHERE
            Season='Summer'
    );
    
    # checking how many summer olympics have been held

select
	count(distinct games),
    season
from
	olympics_numbers.athlete_events as ae
where
	games LIKE '%Summer%'
group by
	season;
    
	## result = 29 ##