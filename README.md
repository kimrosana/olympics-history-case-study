# Olympics History - Data Analysis Case Study

This project's goal was to practice SQL queries while working with real-world dataset and questions. I kept track of the steps I took in the data analysis process, from cleaning, to loading, querying and analysing the data, and they can be seen in the files area.

**About the dataset**

Available in [Kaggle](https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results), the tables used are the following:
- ****athlete_events.csv****, containing data on the modern Olympic Games including all Summer and Winter Games from Athens 1896 to Rio 2016, and columns such as name, sex, age, weight, height, team, noc, games, year, etc;
- ****noc_regions.csv****, containing three columns: noc (National Olympic Committee 3 letter code), country name and notes.

**About the files**

The files include codes used in MySQL and txt files describing the process. I decided to separate each question into its own SQL file in order to focus on the visualization of the code, making it cleaner and more readable.

**Data limitation**

Each record refers to an athlete's participation in the Olympic Games, in such a way that one athlete can have more than 1 record in the dataset if they participated in more than one Olympic Game or event, for instance. Also, the dataset doesn't take into consideration what is an individual sport or a team sport. Therefore, when counting the amount of medals for Football a country has ever won, for instance, we get a higher number than it might actually have been (specially in team sports), since the formulas and queries consider each athlete as one medal won, instead of a single medal for each sport.
