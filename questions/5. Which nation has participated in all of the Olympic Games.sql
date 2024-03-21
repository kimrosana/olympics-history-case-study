# 5. Which nation has participated in all of the olympic games

# finding the max number of distinct games:

with total_games_participated as (
	SELECT 
        ae.noc,
        COUNT(DISTINCT ae.games) AS total_games_participated
    FROM 
        olympics_numbers.athlete_events AS ae
    GROUP BY 
        ae.noc
) 
select
	max(total_games_participated) as max_games
from
	total_games_participated;

		## result: 51 ##

# finding nations with games = 51

with total_games_participated as (
	SELECT 
        ae.noc,
        COUNT(DISTINCT ae.games) AS total_games_participated
    FROM 
        olympics_numbers.athlete_events AS ae
    GROUP BY 
        ae.noc
) 
select
	tgp.noc,
	tgp.total_games_participated as games
from
	total_games_participated tgp
where
	tgp.total_games_participated = '51'
order by
	noc;