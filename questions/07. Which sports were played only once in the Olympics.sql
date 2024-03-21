# 7. Which Sports were just played only once in the olympics.

SELECT
    sport,
    COUNT(DISTINCT Games) as total_games
FROM
    olympics_numbers.athlete_events
GROUP BY
    sport
HAVING
    total_games = 1;