--- Number of Births In Denmark Per Year

SELECT year,births
FROM births_deaths_dk..births_in_dk$
WHERE birhts_month = 'total_births_per_year';

--- Number Of Deaths In Denmark Per Year

SELECT year,total_deaths
FROM births_deaths_dk..FOD207$

-- Joining Tables

SELECT b.year,births,total_deaths
FROM births_deaths_dk..births_in_dk$ AS b
INNER JOIN births_deaths_dk..FOD207$ AS d
ON b.year=d.year
WHERE birhts_month = 'total_births_per_year';

-- Creating a table

----CREATE TABLE bir_dea_co(
----year int,
----births int,
----total_deaths int
----);

----INSERT INTO bir_dea_co( year, births,total_deaths)
----SELECT b.year,births,total_deaths
----FROM births_deaths_dk..births_in_dk$ AS b
----INNER JOIN births_deaths_dk..FOD207$ AS d
----ON b.year=d.year
----WHERE birhts_month = 'total_births_per_year';


-- Testing Table

SELECT *
FROM bir_dea_co

--Adding Difference

SELECT year, births,total_deaths, (births-total_deaths) AS difference,(births-(births*0.035)) AS accounted_for_non_danish_kids
FROM bir_dea_co










