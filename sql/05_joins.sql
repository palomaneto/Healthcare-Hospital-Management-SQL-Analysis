/*
=========================================================
Hospital Management SQL Portfolio Project
File: 05_joins.sql

Objective:
Combine data from multiple hospital tables using JOINs.
=========================================================
*/

USE hospital_appointment_analysis;

-- Question 1
-- Show each appointment with the patient's name.

SELECT
    a.appointment_id,
    p.first_name,
    p.last_name,
    a.appointment_date,
    a.status
FROM appointments a
INNER JOIN patients p
ON a.patient_id = p.patient_id;

-- Question 2
-- Show each appointment together with the doctor's name.

SELECT
    a.appointment_id,
    d.first_name,
    d.last_name,
    d.specialization,
    a.appointment_date
FROM appointments a
INNER JOIN doctors d
ON a.doctor_id = d.doctor_id;

-- Question 3
-- Display treatments together with the patient's name.

SELECT
    p.first_name,
    p.last_name,
    t.treatment_type,
    t.cost
FROM treatments t
INNER JOIN appointments a
ON t.appointment_id = a.appointment_id
INNER JOIN patients p
ON a.patient_id = p.patient_id;

-- Question 4
-- Display billing information together with patient names.

SELECT
    p.first_name,
    p.last_name,
    b.amount,
    b.payment_method,
    b.payment_status
FROM billing b
INNER JOIN patients p
ON b.patient_id = p.patient_id;

-- Question 5
-- Display treatments together with the responsible doctor.

SELECT
    d.first_name,
    d.last_name,
    d.specialization,
    t.treatment_type,
    t.cost
FROM treatments t
INNER JOIN appointments a
ON t.appointment_id = a.appointment_id
INNER JOIN doctors d
ON a.doctor_id = d.doctor_id;
