# 1. how many games have been held?

# recheck distinct games

select distinct
	games
from
	olympics_numbers.athlete_events
order by
	games;

# counting distinct games

select
	count(distinct games) as total_games_held
from
	olympics_numbers.athlete_events
order by
	games;
