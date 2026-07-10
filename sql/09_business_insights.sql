/*
=========================================================
Hospital Management SQL Portfolio Project
File: 09_business_insights.sql

Objective:
Generate business insights that could support hospital
management decision-making.
=========================================================
*/

USE hospital_appointment_analysis;

-- Business Question 1
-- Which doctors have the highest number of appointments?

SELECT
    d.first_name,
    d.last_name,
    d.specialization,
    COUNT(a.appointment_id) AS total_appointments
FROM doctors d
INNER JOIN appointments a
ON d.doctor_id = a.doctor_id
GROUP BY
    d.doctor_id,
    d.first_name,
    d.last_name,
    d.specialization
ORDER BY total_appointments DESC;

-- Business Question 2
-- Which patients have attended the highest number of appointments?

SELECT
    p.first_name,
    p.last_name,
    COUNT(a.appointment_id) AS appointment_count
FROM patients p
INNER JOIN appointments a
ON p.patient_id = a.patient_id
GROUP BY
    p.patient_id,
    p.first_name,
    p.last_name
ORDER BY appointment_count DESC;

-- Business Question 3
-- Which treatment types generate the highest revenue?

SELECT
    treatment_type,
    SUM(cost) AS total_revenue
FROM treatments
GROUP BY treatment_type
ORDER BY total_revenue DESC;

-- Business Question 4
-- Which payment method generates the most income?

SELECT
    payment_method,
    SUM(amount) AS total_income
FROM billing
GROUP BY payment_method
ORDER BY total_income DESC;

-- Business Question 5
-- Which doctor has generated the highest treatment value?

SELECT
    d.first_name,
    d.last_name,
    d.specialization,
    SUM(t.cost) AS total_treatment_value
FROM doctors d
INNER JOIN appointments a
ON d.doctor_id = a.doctor_id
INNER JOIN treatments t
ON a.appointment_id = t.appointment_id
GROUP BY
    d.doctor_id,
    d.first_name,
    d.last_name,
    d.specialization
ORDER BY total_treatment_value DESC;
