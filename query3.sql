--- Predicted population Danish Origin
--CREATE TABLE danishoriginp(
--year int,
--prediction int
--);

--INSERT INTO danishoriginp (year,prediction)
--SELECT year,SUM(prediction) as pop_forecast
--FROM births_deaths_dk..pop_projection_danish$
--WHERE origin_TRIM = 'Persons of danish origin'
--GROUP BY year;

--- Predicted population OTHER Origin
--CREATE TABLE nondanishkidsp (
--year int,
--prediction int);

--INSERT INTO nondanishkidsp (year,prediction)
--SELECT year,SUM(prediction) as pop_forecast_non_d_kids
--FROM births_deaths_dk..pop_projection_danish$
--WHERE origin_TRIM LIKE 'Descendants%'
--GROUP BY year;

--SELECT *
--FROM danishoriginp

--SELECT *
--FROM nondanishkidsp

-- fix for decimals

--ALTER TABLE nondanishkidsp
--ALTER COLUMN prediction decimal (8,2)

-- perc of danish population that are kids of different origin

SELECT d.year,f.prediction AS danish_origin_pop, f.prediction AS non_danish_kids_prediction_pop, ROUND((f.prediction/(d.prediction+f.prediction))*100,2) AS perc_pop_non_dkids
FROM danishoriginp AS d
INNER JOIN nondanishkidsp AS f
ON d.year=f.year;


---  Predicted population in workforce

SELECT SUM(proj2022) AS f_workforce_2022,
SUM(proj2023) AS f_workforce_2023,
SUM(proj2024) AS f_workforce_2024,
SUM(proj2025) AS f_workforce_2025,
SUM(proj2026) AS f_workforce_2026
FROM births_deaths_dk..predicted_pop_byage$
WHERE womenandmenage BETWEEN 15 AND 68;

--- Predicted population on pension

SELECT sum(proj2022) AS f_pensionists_2022,
SUM(proj2023) AS f_pensionists_2023,
SUM(proj2024) AS f_pensionists_2024,
SUM(proj2025) AS f_pensionists_2025,
SUM(proj2026) AS f_pensionists_2026
FROM births_deaths_dk..predicted_pop_byage$
WHERE womenandmenage BETWEEN 69 AND 105;

--- Predicted number of Children

SELECT SUM(proj2022) AS f_kids_2022,
SUM(proj2023) AS f_kids_2023,
SUM(proj2024) AS f_kids_2024,
SUM(proj2025) AS f_kids_2025,
SUM(proj2026) AS f_kids_2026
FROM births_deaths_dk..predicted_pop_byage$
WHERE womenandmenage BETWEEN 0 AND 14;

---- CREATE TABLE

--CREATE TABLE predictionsbyagecategory (
--f_2022 int,
--f_2023 int,
--f_2024 int,
--f_2025 int,
--f_2026 int
--);

--INSERT INTO predictionsbyagecategory (f_2022,f_2023,f_2024,f_2025,f_2026)
--SELECT SUM(proj2022) AS f_workforce_2022,
--SUM(proj2023) AS f_workforce_2023,
--SUM(proj2024) AS f_workforce_2024,
--SUM(proj2025) AS f_workforce_2025,
--SUM(proj2026) AS f_workforce_2026
--FROM births_deaths_dk..predicted_pop_byage$
--WHERE womenandmenage BETWEEN 15 AND 68;

--INSERT INTO predictionsbyagecategory (f_2022,f_2023,f_2024,f_2025,f_2026)
--SELECT SUM(proj2022) AS f_kids_2022,
--SUM(proj2023) AS f_kids_2023,
--SUM(proj2024) AS f_kids_2024,
--SUM(proj2025) AS f_kids_2025,
--SUM(proj2026) AS f_kids_2026
--FROM births_deaths_dk..predicted_pop_byage$
--WHERE womenandmenage BETWEEN 0 AND 14;

--INSERT INTO predictionsbyagecategory (f_2022,f_2023,f_2024,f_2025,f_2026)
--SELECT SUM(proj2022) AS f_pensionists_2022,
--SUM(proj2023) AS f_pensionists_2023,
--SUM(proj2024) AS f_pensionists_2024,
--SUM(proj2025) AS f_pensionists_2025,
--SUM(proj2026) AS f_pensionists_2026
--FROM births_deaths_dk..predicted_pop_byage$
--WHERE womenandmenage BETWEEN 69 AND 105;


--- Testing Table

SELECT *
FROM predictionsbyagecategory




















