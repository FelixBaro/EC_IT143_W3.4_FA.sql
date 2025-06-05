-- SCRIPT HEADER
-- Project: My Communities Analysis – Create Answers
-- Community: Simpsons
-- Student: Felix Amanya
-- Date: 2025-06-05

-- Question 1: What was the average test score for students in 2022?
-- Author: Felix Amanya
SELECT AVG(TestScore) AS AvgTestScore_2022
FROM Simpsons_Students
WHERE Year = 2022;

-- Question 2: Which school had the highest enrollment in 2023?
-- Author: Felix Amanya
SELECT TOP 1 SchoolName, Enrollment
FROM Simpsons_Schools
WHERE Year = 2023
ORDER BY Enrollment DESC;

-- Question 3: How many students qualified for free lunch in 2021?
-- Author: John Smith (classmate)
SELECT COUNT(*) AS FreeLunchStudents_2021
FROM Simpsons_Students
WHERE Year = 2021 AND FreeLunchEligible = 'Yes';

-- Question 4: What was the graduation rate by school in 2022?
-- Author: Felix Amanya
SELECT SchoolName, AVG(GraduationRate) AS AvgGradRate_2022
FROM Simpsons_Schools
WHERE Year = 2022
GROUP BY SchoolName;
