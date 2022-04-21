#First look at Data!

SELECT * FROM covid
ORDER BY location, date;


#Total cases vs Total deaths country wise

SELECT location, sum(total_cases) cases, sum(total_deaths) deaths
FROM covid
GROUP BY location
ORDER BY location;


#Death Percentage country wise

SELECT location, sum(total_cases) cases, sum(total_deaths) deaths, (sum(total_deaths)/sum(total_cases))*100 as "Percentage_Deaths"
FROM covid
GROUP BY location
ORDER BY location;

