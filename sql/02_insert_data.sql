/*
Hospital Management SQL Portfolio Project
File: 02_insert_data.sql

Dataset source:
Hospital Management Dataset from Kaggle

The dataset was imported into MySQL using the
MySQL Workbench Table Data Import Wizard.

Imported CSV files:
1. patients.csv
2. doctors.csv
3. appointments.csv
4. treatments.csv
5. billing.csv

Each CSV file was imported into its corresponding table.
*/

USE hospital_appointment_analysis;

-- Confirm that the imported tables are available

SHOW TABLES;

-- Preview imported patient data

SELECT *
FROM patients
LIMIT 20;

-- Preview imported doctor data

SELECT *
FROM doctors
LIMIT 20;

-- Preview imported appointment data

SELECT *
FROM appointments
LIMIT 20;

-- Preview imported treatment data

SELECT *
FROM treatments
LIMIT 20;

-- Preview imported billing data

SELECT *
FROM billing
LIMIT 20;
