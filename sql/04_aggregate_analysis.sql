/*
=========================================================
Hospital Management SQL Portfolio Project
File: 04_aggregate_analysis.sql

Objective:
Perform aggregate analysis to summarise hospital data.
=========================================================
*/

USE hospital_appointment_analysis;

-- Question 1
-- How many patients are registered?

SELECT COUNT(*) AS total_patients
FROM patients;

-- Question 2
-- How many doctors are employed?

SELECT COUNT(*) AS total_doctors
FROM doctors;

-- Question 3
-- How many appointments have been scheduled?

SELECT COUNT(*) AS total_appointments
FROM appointments;

-- Question 4
-- What is the average treatment cost?

SELECT ROUND(AVG(cost),2) AS average_treatment_cost
FROM treatments;

-- Question 5
-- What is the highest treatment cost?

SELECT MAX(cost) AS highest_treatment_cost
FROM treatments;

-- Question 6
-- What is the lowest treatment cost?

SELECT MIN(cost) AS lowest_treatment_cost
FROM treatments;

-- Question 7
-- What is the total revenue billed?

SELECT ROUND(SUM(amount),2) AS total_revenue
FROM billing;
