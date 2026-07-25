# Corporate Financial Performance & Budget Variance Analysis

## Project Overview

In this project I built a financial analytics solution using SQL and Power BI to analyze budget performance and departmental spending. This project identifies unfavorable budget variances and analyzes expense trends while providing actionable recommendations to improve financial decision making.

The project follows a real world Financial Planning & Analysis process, beginning with raw data preparation and ending with interactive business intelligence reporting.

---

## Business Problem

Leadership identified concerns regarding increasing operating expenses and inconsistent budget performance across departments. Although overall financial activity remained stable, decision-makers lacked understanding into where overspending was occurring and which areas required additional financial attention.

---

## Objectives

- Compare actual spending against planned budgets.
- Identify departments with significant budget variances.
- Analyze expense trends over time.
- Determine the primary contributors to cost increases.
- Develop recommendations for improving financial efficiency.
- Build an executive Power BI dashboard
- Present actionable business recommendations

---

## Dataset

**Source:** IBM Financial Planning & Analysis Dataset (available through Kaggle)

The dataset was enhanced with additional calculated fields to support business analysis, including:

- Budget Variance ($)
- Budget Variance (%)
- Budget Utilization
- Fiscal Quarter
- Fiscal Year
- Budget Status
- Profitability Status

---

## Tools Used

- Microsoft Excel
- SQL Server
- SQL Server Management Studio
- Power BI

---

## Project Workflow

### 1. Data Preparation

- Imported financial data into Excel
- Cleaned and standardized fields
- Created calculated financial metrics
- Validated data quality

### 2. SQL Analysis

Performed SQL analysis to answer key business questions including:

- Department budget performance
- Spending variance analysis
- Budget utilization
- Financial summaries
- Department rankings

### 3. Power BI Dashboard

Created an interactive executive dashboard including:

- Total Budget
- Actual Spending
- Budget Variance
- Variance Percentage
- Budget vs Actual by Department
- Department Variance Ranking
- Monthly Spending Trends
- Interactive filters

---

## Key Performance Indicators

- Total Budget
- Actual Spending
- Budget Variance ($)
- Budget Variance (%)
- Budget Utilization

---

## Dashboard Preview

<img width="1302" height="762" alt="image" src="https://github.com/user-attachments/assets/e236a605-2e87-4c3b-ba07-3b35f5b945e5" />


---

## Key Insights

- Marketing recorded the largest unfavorable budget variance.
- Sales and HR also exceeded planned spending.
- Budget variance exceeded 10% across multiple departments.
- Department-level reporting highlighted opportunities for improved financial oversight.

---

## Business Recommendations

- Review budgeting assumptions for departments with recurring overspending.
- Implement monthly variance monitoring.
- Improve forecasting accuracy using historical spending trends.
- Develop department spending alerts for early intervention.

---

## Repository Structure

```text
Corporate-Financial-Performance-Analysis/
│
├── README.md
│
├── Data/
│   ├── Budget_vs_Actual_Data.xlsx
│   ├── corporate_finance_transformed.xlsx
│
├── SQL/
│   ├── CorporateFinanceAnalysis.sql
│
├── PowerBI/
│   └── Corporate_Financial_Performance.pbix
│
├── Images/
│   ├── PowerBI Dashboard.png
│   ├── SQL-create-table.png
│   └── SQL-query.png
│   └── Financia-data-transformed.png
└── 
```
