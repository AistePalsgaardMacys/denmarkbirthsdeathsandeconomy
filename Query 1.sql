-- Number Of Children Each Year

SELECT nr_siblings AS total_children,year
FROM births_deaths_dk..children_siblings$
WHERE name = 'Total Siblings'
ORDER BY total_children DESC;

--- percentage difference between 2020 and 2021

SELECT (MAX(nr_siblings) - MIN(nr_siblings))/MAX(nr_siblings)*100 AS perc_decr_2020_2021
FROM births_deaths_dk..children_siblings$
WHERE (year=2020 OR year=2021) AND name='Total Siblings';

--- How many children families chose to have most comonly through 5 year period.

SELECT name, SUM(nr_siblings) AS most_common_nr_sib
FROM births_deaths_dk..children_siblings$
WHERE name <> 'Total Siblings'
GROUP BY name
ORDER BY most_common_nr_sib DESC;



--- In which year was each amount of siblings most popular?

SELECT year,name, nr_siblings AS popularity
FROM births_deaths_dk..children_siblings$
WHERE nr_siblings=(SELECT MAX(nr_siblings) 
	FROM births_deaths_dk..children_siblings$ as c
	WHERE c.name = children_siblings$.name) and name <> 'Total Siblings'
GROUP BY name, year, nr_siblings
ORDER BY nr_siblings DESC;
