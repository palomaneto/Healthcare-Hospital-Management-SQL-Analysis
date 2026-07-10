/*
=========================================================
Hospital Management SQL Portfolio Project
File: 06_group_by_analysis.sql

Objective:
Summarise hospital data using GROUP BY.
=========================================================
*/

USE hospital_appointment_analysis;

-- Question 1
-- Number of doctors by specialization

SELECT
    specialization,
    COUNT(*) AS total_doctors
FROM doctors
GROUP BY specialization;

-- Question 2
-- Number of appointments by status

SELECT
    status,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY status;

-- Question 3
-- Average treatment cost by treatment type

SELECT
    treatment_type,
    ROUND(AVG(cost),2) AS average_cost
FROM treatments
GROUP BY treatment_type;

-- Question 4
-- Total billing amount by payment method

SELECT
    payment_method,
    ROUND(SUM(amount),2) AS total_revenue
FROM billing
GROUP BY payment_method;

-- Question 5
-- Number of patients by gender

SELECT
    gender,
    COUNT(*) AS total_patients
FROM patients
GROUP BY gender;

-- Question 6
-- Total revenue by payment status

SELECT
    payment_status,
    ROUND(SUM(amount),2) AS total_amount
FROM billing
GROUP BY payment_status;
