		## making tests to check if everything is ok with the data

	# sex column
    
select
	distinct sex
from
	olympics_numbers.athlete_events;
    
# result: 2 rows, M and F - OK

	# age column
    
select
	distinct age
from
	olympics_numbers.athlete_events;
    
# result: ages 10 to 97 + NA [checks out with the data uploaded], no repeated numbers (which would indicate whitespaces needed to be trimmed for instance) - OK

	# height column

select
	distinct height
from
	olympics_numbers.athlete_events
order by
	height;
    
# result from 127 to 226 + NAs [checks out with previous data], no repeated numbers (which would indicate whitespaces needed to be trimmed for instance) - OK

	# weight column

select
	distinct weight
from
	olympics_numbers.athlete_events
order by
	weight;
    
# result from 25 to 214 + NAs [checks out with previous data], no repeated numbers (which would indicate whitespaces needed to be trimmed for instance) - OK

	# team column

select
	distinct team
from
	olympics_numbers.athlete_events
order by
	team;

# results checks out with pre-uploading data; nothing unusual identified

	# team NOC

select
	distinct NOC
from
	olympics_numbers.athlete_events
order by
	noc;

# results checks out with pre-uploading data; nothing unusual identified

	# region column

select
	distinct region
from
	olympics_numbers.athlete_events
order by
	region;

# results checks out with pre-uploading data; nothing unusual identified

	# games column

select
	distinct games
from
	olympics_numbers.athlete_events
order by
	games;

# results checks out with pre-uploading data; nothing unusual identified

	# year column

select
	distinct year
from
	olympics_numbers.athlete_events
order by
	year;

# results checks out with pre-uploading data; nothing unusual identified

	# season column

select
	distinct season
from
	olympics_numbers.athlete_events
order by
	season;

# results checks out with pre-uploading data; 2 rows - summer and winter

	# city column

select
	distinct city
from
	olympics_numbers.athlete_events
order by
	city;

# results checks out with pre-uploading data; nothing unusual identified

	# sport column

select
	distinct sport
from
	olympics_numbers.athlete_events
order by
	sport;

# results checks out with pre-uploading data; nothing unusual identified

	# event column

select
	distinct event
from
	olympics_numbers.athlete_events
order by
	event;

# results checks out with pre-uploading data; nothing unusual identified

# medal column

select
	distinct medal
from
	olympics_numbers.athlete_events
order by
	medal;

# results checks out with pre-uploading data; nothing unusual identified; 4 rows = bronze, gold, NA, silver