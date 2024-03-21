# 16. Identify which country won the most gold, most silver and most bronze medals in each olympic games.

with MedalCounts as (
    select
        games,
        region,
        medal,
        count(*) as MedalCount
    from
        olympics_numbers.athlete_events as ae
	where
        Medal != 'NA'
    group by
        games,
        region,
        medal
),
	RankedMedals as (
    select
        games,
        region,
        medal,
        MedalCount,
        row_number() over (partition by games, medal order by MedalCount desc) as MedalRank
    from
        MedalCounts
)
select
    games,
	region,
    medal,
    MedalCount
from
    RankedMedals
where
    MedalRank = 1
order by
	games,
    medal;