## checking how many rows the table has

select *
from olympics_numbers.athlete_events;

	# result = 271115 rows returned
	# original file has 271117 - considering header, which means there's one row missing

# trying to identify which one is missing

select *
from olympics_numbers.athlete_events
where id = '135571';

select *
from olympics_numbers.athlete_events
where id = '1';

# result: not the first and not the last!!! no idea how to solve this though, will eventually get back to it

## checking distinct rows

select
	distinct *
from
	olympics_numbers.athlete_events;
    
# result = 269730 rows returned [meaning there are 1385 duplicate rows]

# 1. creating a temporary table that has the same structure as the original table:

create temporary table
	temp_table
like
	olympics_numbers.athlete_events;

# 2. inserting distinct rows from the original table into the temporary table

insert into
	temp_table
select
	distinct *
from
	olympics_numbers.athlete_events;

# 3. truncating the original table to remove its rows while keeping the structure intact

truncate table
	olympics_numbers.athlete_events;

# 4. inserting rows from the temporary table into the (now empty) original table

insert into
	olympics_numbers.athlete_events
select
	*
from
	temp_table;

# 5. dropping the temporary table to delete it from the db

drop temporary table
	temp_table;

# 6. checking to see if the number of rows from the original table match with the number of rows from the temporary table

select
	*
from
	olympics_numbers.athlete_events;
    
    # temp_table w/ distinct rows = 269730 rows;
    # current olympics_numbers.athlete_events = 269730 rows.

select *
from olympics_numbers.athlete_events
group by id, name, sex, age, height, weight, team, NOC, region, games, year, season, city, sport, event, medal
having count(*) > 1;

	# 0 rows returned

        ##duplicates successfully removed##