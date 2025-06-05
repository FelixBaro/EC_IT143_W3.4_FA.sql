-- SCRIPT HEADER
-- Project: My Communities Analysis – Create Answers
-- Community: MyFC
-- Student: Felix Amanya
-- Date: 2025-06-05

-- Question 1: What is the total population in 2023?
-- Author: Felix Amanya
SELECT SUM(Population) AS TotalPopulation_2023
FROM MyFC_Data
WHERE Year = 2023;

-- Question 2: What is the average income in 2022?
-- Author: Felix Amanya
SELECT AVG(Income) AS AverageIncome_2022
FROM MyFC_Data
WHERE Year = 2022;

-- Question 3: What is the unemployment rate in 2021?
-- Author: Jane Doe (classmate)
SELECT AVG(UnemploymentRate) AS AvgUnemployment_2021
FROM MyFC_Data
WHERE Year = 2021;

-- Question 4: Which neighborhood had the most crimes in 2023?
-- Author: Felix Amanya
SELECT TOP 1 Neighborhood, COUNT(*) AS CrimeCount
FROM MyFC_CrimeReports
WHERE Year = 2023
GROUP BY Neighborhood
ORDER BY CrimeCount DESC;
