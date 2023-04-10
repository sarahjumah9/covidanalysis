CREATE DATABASE covid;
USE covid;
SELECT * FROM vaccinations;
SELECT * FROM deaths;

SELECT location, date ,total_cases, new_cases, total_deaths
FROM deaths
GROUP BY 1,2;

SELECT location, date ,total_cases, new_cases, total_deaths, (total_deaths/total_cases)*100 AS death_percentage
FROM deaths
WHERE location like 'Afghanistan'
GROUP BY 1,2;

SELECT continent, location, date, (people_fully_vaccinated/population)*100 AS fully_vaccinated_percentage
FROM vaccinations 
GROUP BY 1,2;

SELECT continent, location, MAX(total_cases) AS highest_case, (total_deaths/total_cases)*100 AS death_percentage
FROM DEATHS;

SELECT continent, location, MIN(total_cases) AS highest_case, (total_deaths/total_cases)*100 AS death_percentage
FROM deaths;

SELECT continent,location, MAX(population)
FROM vaccinations
WHERE continent = 'Africa';

SELECT location, MAX(total_deaths) AS totaldeathcount
FROM deaths
group by continent
ORDER BY totaldeathcount desc;

SELECT d.continent, d.location, d.date, d.total_cases, d.total_deaths, v.total_vaccinations, v.people_fully_vaccinated, v.population
FROM deaths as d
JOIN vaccinations as v ON d.location = v.location;
