/*
=========================================================
Hospital Management SQL Portfolio Project
File: 07_having_and_subqueries.sql

Objective:
Filter grouped results using HAVING and answer
business questions using subqueries.
=========================================================
*/

USE hospital_appointment_analysis;

-- Question 1
-- Show specializations with more than one doctor

SELECT
    specialization,
    COUNT(*) AS total_doctors
FROM doctors
GROUP BY specialization
HAVING COUNT(*) > 1;

-- Question 2
-- Show treatment types whose average cost exceeds 500

SELECT
    treatment_type,
    ROUND(AVG(cost),2) AS average_cost
FROM treatments
GROUP BY treatment_type
HAVING AVG(cost) > 500;

-- Question 3
-- Find treatments costing more than the average treatment cost

SELECT
    treatment_type,
    cost
FROM treatments
WHERE cost >
(
    SELECT AVG(cost)
    FROM treatments
);

-- Question 4
-- Find patients who have bills greater than the average bill

SELECT
    patient_id,
    amount
FROM billing
WHERE amount >
(
    SELECT AVG(amount)
    FROM billing
);

-- Question 5
-- Find doctors with more experience than the average

SELECT
    first_name,
    last_name,
    years_experience
FROM doctors
WHERE years_experience >
(
    SELECT AVG(years_experience)
    FROM doctors
);
