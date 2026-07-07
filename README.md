# 🧹 SQL Data Cleaning Project

## 📌 Project Overview

This project focuses on cleaning a real-world layoffs dataset using **MySQL**. The objective was to transform raw, inconsistent data into a clean and analysis-ready dataset by applying SQL data cleaning techniques.

---

## 🎯 Objectives

- Create a staging table to preserve the original data.
- Identify and remove duplicate records.
- Standardize inconsistent data.
- Handle NULL and missing values.
- Convert data into appropriate formats.
- Produce a clean dataset for further analysis.

---

## 🛠️ Tools Used

- MySQL
- MySQL Workbench
- SQL

---

## 📂 Dataset

The project uses a layoffs dataset containing information such as:

- Company
- Location
- Industry
- Total Employees Laid Off
- Percentage Laid Off
- Date
- Stage
- Country
- Funds Raised (Millions)

---

## 🔍 SQL Techniques Used

- CREATE TABLE
- INSERT INTO
- SELECT
- UPDATE
- DELETE
- Common Table Expressions (CTEs)
- Window Functions (`ROW_NUMBER()`)
- Data Standardization
- Duplicate Removal
- NULL Value Handling

---

## 📈 Project Workflow

### 1. Created a Staging Table
A staging table was created to avoid making changes to the original dataset.

### 2. Removed Duplicate Records
Used the `ROW_NUMBER()` window function with a CTE to identify and delete duplicate rows.

### 3. Standardized Data
- Corrected inconsistent values.
- Standardized text formatting.
- Fixed date formats.

### 4. Handled Missing Values
Updated or removed NULL values where appropriate.

### 5. Final Clean Dataset
Produced a clean and consistent dataset ready for exploratory data analysis (EDA).

---

## 📸 Project Screenshots

### Raw Dataset

(Add your screenshot here)

### SQL Queries

(Add your screenshot here)

### Final Cleaned Dataset

(Add your screenshot here)

---

## 📚 Skills Demonstrated

- SQL
- Data Cleaning
- Data Preprocessing
- Window Functions
- Common Table Expressions (CTEs)
- Database Management
- Problem Solving

---

## ✅ Results

Successfully cleaned the layoffs dataset by:

- Removing duplicate records
- Standardizing inconsistent values
- Handling missing data
- Preparing the dataset for analysis

The cleaned dataset is now suitable for Exploratory Data Analysis (EDA) and visualization.

---

## 🚀 Future Improvements

- Perform Exploratory Data Analysis (EDA)
- Build interactive dashboards using Power BI or Tableau
- Generate business insights from the cleaned dataset

---

## 👨‍💻 Author

**Mohammad Shakib Babu**

- LinkedIn: www.linkedin.com/in/mohammad-shakib-babu-671643320
- GitHub: https://github.com/babumohammadshakib
