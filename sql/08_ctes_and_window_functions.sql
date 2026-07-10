/*
=========================================================
Hospital Management SQL Portfolio Project
File: 08_ctes_and_window_functions.sql

Objective:
Use Common Table Expressions (CTEs) and Window Functions
to answer advanced business questions.
=========================================================
*/

USE hospital_appointment_analysis;

-- Question 1
-- Rank doctors by years of experience

SELECT
    doctor_id,
    first_name,
    last_name,
    specialization,
    years_experience,
    RANK() OVER (ORDER BY years_experience DESC) AS experience_rank
FROM doctors;

-- Question 2
-- Rank treatments by cost

SELECT
    treatment_type,
    cost,
    DENSE_RANK() OVER (ORDER BY cost DESC) AS cost_rank
FROM treatments;

-- Question 3
-- Running total of billing amounts

SELECT
    bill_id,
    amount,
    SUM(amount) OVER (ORDER BY bill_id) AS running_total
FROM billing;

-- Question 4
-- CTE showing expensive treatments

WITH expensive_treatments AS
(
    SELECT
        treatment_id,
        treatment_type,
        cost
    FROM treatments
    WHERE cost > 500
)

SELECT *
FROM expensive_treatments;

-- Question 5
-- CTE calculating average billing amount

WITH average_bill AS
(
    SELECT AVG(amount) AS avg_amount
    FROM billing
)

SELECT
    bill_id,
    amount
FROM billing
WHERE amount >
(
    SELECT avg_amount
    FROM average_bill
);
