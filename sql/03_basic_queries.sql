/*
=========================================================
Hospital Management SQL Portfolio Project
File: 03_basic_queries.sql
Author: Paloma Neto

Objective:
Answer basic business questions using SQL.
=========================================================
*/

USE hospital_appointment_analysis;

-- Question 1
-- Display the first 20 patients

SELECT *
FROM patients
LIMIT 20;

-- Question 2
-- Display the first 20 doctors

SELECT *
FROM doctors
LIMIT 20;

-- Question 3
-- Display the first 20 appointments

SELECT *
FROM appointments
LIMIT 20;

-- Question 4
-- Display the first 20 treatments

SELECT *
FROM treatments
LIMIT 20;

-- Question 5
-- Display the first 20 billing records

SELECT *
FROM billing
LIMIT 20;
