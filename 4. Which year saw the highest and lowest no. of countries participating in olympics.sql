# 4. Which year saw the highest and lowest no of countries participating in olympics

## just numbers w/o identifying the game/year

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
	min(total_nations) as lowest_participating_countries,
    max(total_nations) as highest_participating_countries
from (
	select
		games,
		count(distinct region) as total_nations
from
	total_each_nation
group by
	games
order by
	games)
as game_counts;
    
### numbers identifying game-year

WITH total_each_nation AS (
    SELECT 
        ae.games, 
        nr.region
    FROM 
        olympics_numbers.athlete_events AS ae
    JOIN 
        olympics_numbers.noc_regions AS nr 
    ON 
        ae.noc = nr.noc
)
SELECT 
    games, 
    COUNT(DISTINCT region) AS total_nations
FROM 
    total_each_nation
GROUP BY 
    games
HAVING 
    COUNT(DISTINCT region) = (
        SELECT 
            MIN(total_nations)
        FROM (
            SELECT 
                COUNT(DISTINCT region) AS total_nations  
            FROM 
                total_each_nation
            GROUP BY 
                games
        ) AS game_counts
    )
OR
	COUNT(DISTINCT region) = (
        SELECT 
            MAX(total_nations)
        FROM (
            SELECT 
                COUNT(DISTINCT region) AS total_nations  
            FROM 
                total_each_nation
            GROUP BY 
                games
        ) AS game_counts
    )