/*
=========================================================
Healthcare Hospital Management SQL Analysis
File: 10_views.sql

Objective:
Create reusable SQL views to simplify reporting and
support hospital management analysis.

Author: Paloma Neto
=========================================================
*/

USE hospital_appointment_analysis;

-- ======================================================
-- View 1
-- Appointment Details
-- Combines appointment, patient and doctor information
-- into a single reusable view.
-- ======================================================

CREATE OR REPLACE VIEW appointment_details AS

SELECT
    a.appointment_id,
    a.appointment_date,
    a.status,

    p.patient_id,
    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,
    p.gender,
    p.age,

    d.doctor_id,
    d.first_name AS doctor_first_name,
    d.last_name AS doctor_last_name,
    d.specialization,
    d.years_experience

FROM appointments a

INNER JOIN patients p
    ON a.patient_id = p.patient_id

INNER JOIN doctors d
    ON a.doctor_id = d.doctor_id;

-- Preview the view

SELECT *
FROM appointment_details
LIMIT 20;

-- ======================================================
-- View 2
-- Billing Summary
-- Combines billing and patient information.
-- ======================================================

CREATE OR REPLACE VIEW billing_summary AS

SELECT

    b.bill_id,
    b.billing_date,
    b.amount,
    b.payment_method,
    b.payment_status,

    p.patient_id,
    p.first_name,
    p.last_name

FROM billing b

INNER JOIN patients p
    ON b.patient_id = p.patient_id;

-- Preview the view

SELECT *
FROM billing_summary
LIMIT 20;

-- ======================================================
-- View 3
-- Treatment Summary
-- Displays treatments together with the responsible
-- doctor and patient.
-- ======================================================

CREATE OR REPLACE VIEW treatment_summary AS

SELECT

    t.treatment_id,
    t.treatment_type,
    t.cost,

    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,

    d.first_name AS doctor_first_name,
    d.last_name AS doctor_last_name,
    d.specialization

FROM treatments t

INNER JOIN appointments a
    ON t.appointment_id = a.appointment_id

INNER JOIN patients p
    ON a.patient_id = p.patient_id

INNER JOIN doctors d
    ON a.doctor_id = d.doctor_id;

-- Preview the view

SELECT *
FROM treatment_summary
LIMIT 20;
