# SQL Data Cleaning Project

## 📌 Project Overview

This project demonstrates the process of cleaning a real-world layoffs dataset using MySQL. The objective was to transform raw and inconsistent data into a clean dataset that is ready for analysis.

---

## Dataset

The dataset contains information about company layoffs, including:

- Company
- Location
- Industry
- Total Laid Off
- Percentage Laid Off
- Date
- Stage
- Country
- Funds Raised (Millions)

---

## Objectives

The main objectives of this project were to:

- Preserve the original dataset using a staging table.
- Remove duplicate records.
- Standardize inconsistent data.
- Handle NULL and missing values.
- Convert incorrect data types.
- Prepare the dataset for future analysis.

---

## Tools Used

- MySQL
- MySQL Workbench

---

## SQL Concepts Used

- CREATE TABLE
- INSERT INTO
- SELECT
- UPDATE
- DELETE
- ALTER TABLE
- Common Table Expressions (CTEs)
- Window Functions (`ROW_NUMBER()`)
- Self Joins
- Data Cleaning Techniques

---

## Data Cleaning Process

### 1. Created a Staging Table

A staging table was created to preserve the original dataset before making any modifications.

### 2. Removed Duplicate Records

Used the `ROW_NUMBER()` window function and a Common Table Expression (CTE) to identify duplicate records and remove them.

### 3. Standardized Data

- Removed extra spaces using `TRIM()`.
- Standardized industry values.
- Standardized country names.

### 4. Converted Date Format

Converted the `date` column from TEXT to DATE using `STR_TO_DATE()`.

### 5. Handled Missing Values

- Replaced blank industries with NULL.
- Filled missing industry values using a self join.
- Removed records where both Total Laid Off and Percentage Laid Off were missing.

### 6. Final Cleanup

Dropped the temporary `row_num` column after duplicate removal.

---

## Skills Demonstrated

- SQL
- MySQL
- Data Cleaning
- Window Functions
- Common Table Expressions (CTEs)
- Self Joins
- Data Preprocessing
- Database Management

---

## Project Outcome

Successfully transformed a raw layoffs dataset into a clean, consistent, and analysis-ready dataset using SQL.

---

## Future Improvements

- Perform Exploratory Data Analysis (EDA)
- Build dashboards using Power BI
- Generate business insights from the cleaned dataset

---

## Author

**Mohammad Shakib Babu**

LinkedIn: www.linkedin.com/in/mohammad-shakib-babu-671643320

GitHub: https://github.com/babumohammadshakib
