USE CorporateFinanceAnalysis;

SELECT * FROM Financial_Data;

--How much did the company spend?
USE CorporateFinanceAnalysis;

SELECT SUM([Actual_Amount]) AS Total_Spending
FROM Financial_Data;

--What was the budget?
SELECT SUM([Budget_Amount]) AS Total_Budget
FROM Financial_Data;

--Did we overspend?
SELECT
    SUM([Budget_Amount]) AS Total_Budget,
    SUM([Actual_Amount]) AS Actual_Spending,
    SUM([Actual_Amount]) - SUM([Budget_Amount]) AS Variance
FROM Financial_Data;

--What deparements overspent?
SELECT
    Department,
    SUM([Budget_Amount]) AS Budget,
    SUM([Actual_Amount]) AS Actual,
    SUM([Actual_Amount]) - SUM([Budget_Amount]) AS Variance
FROM Financial_Data
WHERE Department IS NOT NULL
GROUP BY Department
ORDER BY Variance DESC;

--Comparing the departments fairly
SELECT
    Department,
    SUM([Budget_Amount]) AS Budget,
    SUM([Actual_Amount]) AS Actual,
    (SUM([Actual_Amount]) - SUM([Budget_Amount])) * 100.0
        / SUM([Budget_Amount]) AS Variance_Percentage
FROM Financial_Data
WHERE Department IS NOT NULL
GROUP BY Department
ORDER BY Variance_Percentage DESC;

--What categories are overspending?
SELECT
    [Category],
    SUM([Actual_Amount]) AS Total_Spending
FROM Financial_Data
WHERE Category IS NOT NULL
GROUP BY [Category]
ORDER BY Total_Spending DESC;

--What expenses are increasing?
SELECT
    YEAR([Date]) AS Year,
    MONTH([Date]) AS Month,
    SUM([Actual_Amount]) AS Monthly_Spending
FROM Financial_Data
GROUP BY YEAR([Date]), MONTH([Date])
ORDER BY Year, Month;

--Create table
SELECT
    Department,
    SUM(Budget_Amount) AS Budget,
    SUM(Actual_Amount) AS Actual,
    SUM(Actual_Amount) - SUM(Budget_Amount) AS Variance,

    ROUND(
        ((SUM(Actual_Amount) - SUM(Budget_Amount)) * 100.0) / SUM(Budget_Amount),
        2
    ) AS Variance_Percentage
INTO Department_Sum
FROM Financial_Data

WHERE Department IS NOT NULL

GROUP BY Department

ORDER BY Variance DESC;

SELECT * FROM Department_Sum;