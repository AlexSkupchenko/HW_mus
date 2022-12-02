--name and year of release of albums released in 2018
SELECT title, years FROM album
WHERE years = 2018;

--name and duration of the longest track
SELECT name, duration FROM song
ORDER BY duration DESC LIMIT 1;

--the title of tracks that are at least 3.5 minutes long
SELECT name, duration FROM song
WHERE duration >= 310 ORDER BY duration DESC;

--titles of collections released between 2018 and 2020 inclusive
SELECT name FROM collection
WHERE (years >= 2018) AND (years <= 2020);

--performers whose name consists of 1 word
SELECT name FROM artist
WHERE NOT name LIKE '%% %%';

--title of tracks that contain the word "my"
SELECT name FROM song
WHERE name LIKE '%%My%%';