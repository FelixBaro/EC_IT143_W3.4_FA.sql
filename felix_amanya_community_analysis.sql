-- -------------------------------
-- HelloWorld Dataset Queries
-- -------------------------------
USE HelloWorld;
GO

-- Question 1: Show all students in the database
SELECT * FROM Students;

-- Question 2: Count how many students are above 20 years old
SELECT COUNT(*) AS StudentsOver20
FROM Students
WHERE Age > 20;

-- -------------------------------
-- OgdenEducation Dataset Queries
-- -------------------------------
USE OgdenEducation;
GO

-- Question 1: What is the average graduation rate?
SELECT AVG(GraduationRate) AS AvgGraduationRate
FROM EducationStats;

-- Question 2: Which schools have a dropout rate greater than 10%?
SELECT SchoolName, DropoutRate
FROM EducationStats
WHERE DropoutRate > 10;

-- -------------------------------
-- LaytonCrime Dataset Queries
-- -------------------------------
USE LaytonCrime;
GO

-- Question 1: How many crime reports are unresolved?
SELECT COUNT(*) AS UnresolvedCrimes
FROM CrimeReports
WHERE Resolved = 0;

-- Question 2: Which neighborhood had the most crime reports?
SELECT Neighborhood, COUNT(*) AS CrimeCount
FROM CrimeReports
GROUP BY Neighborhood
ORDER BY CrimeCount DESC;
