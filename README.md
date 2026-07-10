# 🏥 Healthcare Hospital Management SQL Analysis

> Exploring healthcare data through SQL to support operational and clinical decision-making.

---

## 👋 About This Project

As a Health Informatics postgraduate with a clinical background in dental nursing, I wanted to build a project that reflects how SQL can be applied in a realistic healthcare setting.

This project has the workflow of a healthcare data analyst by exploring a relational hospital database, connecting multiple tables and answering business questions that support operational and financial decision-making.

Hope this is insightful for you!

---

## Project Objectives

This project demonstrates how SQL can be used to:

- Explore a healthcare database
- Analyse relational data
- Answer business questions using SQL
- Generate operational and financial insights
- Strengthen practical SQL skills for healthcare analytics

---

## 🗂 Dataset

**Source:** Hospital Management Dataset (Kaggle)

The project analyses five related tables:

- 👤 Patients
- 👨‍⚕️ Doctors
- 📅 Appointments
- 💊 Treatments
- 💳 Billing

---

## 🧩 Database Structure

The Entity Relationship Diagram (ERD) below illustrates the logical relationships between the hospital database tables.

![Hospital Database ERD](image/hospital_database_erd)

---

## 🛠 SQL Skills Demonstrated

- ✅ Database creation
- ✅ Data import
- ✅ Data exploration
- ✅ Aggregate Functions
- ✅ GROUP BY
- ✅ HAVING
- ✅ INNER JOIN
- ✅ Subqueries
- ✅ Common Table Expressions (CTEs)
- ✅ Window Functions
- ✅ SQL Views

---

## Project Structure

```text
Healthcare-Hospital-Management-SQL-Analysis/

│
├── README.md
│
├── images/
│   ├── hospital_database_erd.png
│   ├── doctor_workload_analysis.png
│   └── doctor_experience_ranking.png
│
└── sql/
    ├── 01_create_database.sql
    ├── 02_insert_data.sql
    ├── 03_basic_queries.sql
    ├── 04_aggregate_analysis.sql
    ├── 05_joins.sql
    ├── 06_group_by_analysis.sql
    ├── 07_having_and_subqueries.sql
    ├── 08_ctes_and_window_functions.sql
    ├── 09_business_insights.sql
    └── 10_views.sql
```

---

## Example Business Questions

This project answers realistic healthcare business questions, including:

- Which doctors manage the highest number of appointments?
- Which treatment types generate the highest revenue?
- Which payment methods generate the most income?
- Which patients attend the hospital most frequently?
- Which doctors have the greatest clinical experience?

---

## 📊 Example SQL Analysis

### Doctor Workload Analysis

This query combines the **Doctors** and **Appointments** tables to identify clinicians with the highest appointment workload.

![Doctor Workload Analysis](images/doctor_workload_analysis.png)

---

### Doctor Experience Ranking

A SQL Window Function (`RANK()`) was used to rank doctors according to their years of professional experience.

![Doctor Experience Ranking](images/doctor_experience_ranking.png)

---

## 💡 Key Findings

The SQL analysis demonstrates how relational healthcare data can be transformed into meaningful operational insights.

Key observations include:

- Variation in doctor workload across different medical specialisations.
- Differences in treatment costs between treatment types.
- Revenue trends across payment methods.
- Identification of patients with frequent appointments.
- Successful integration of patient, appointment, treatment and billing information using SQL joins.
- Practical use of CTEs, Window Functions and SQL Views to support reusable healthcare reporting.

---

## 🚀 Future Improvements

Potential future developments include:

- 📈 Building an interactive Power BI dashboard.
- ⚡ Optimising query performance using indexes.
- 🗓 Converting imported text fields into SQL DATE data types.
- 📄 Creating additional reporting views and stored procedures.
- 🐍 Extending the analysis using Python and pandas.
- 📊 Developing healthcare KPI dashboards for management reporting.

---

## 💻 Technologies Used

- MySQL Workbench
- SQL
- Git
- GitHub

---

## 👩‍⚕️ About Me

I have a clinical background in dental nursing and recently completed an MSc in Health Informatics. I enjoy combining healthcare knowledge with data analysis to explore how information can support better clinical, operational and strategic decision-making.

This repository forms part of my growing healthcare analytics portfolio as I continue developing practical skills in SQL, data analysis and health informatics.

---

⭐ *Thank you for taking the time to explore this project. Feedback and suggestions are always welcome.*
