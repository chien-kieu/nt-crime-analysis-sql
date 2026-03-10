USE NT_Crime_Analysis;

-- =============================================
-- NT CRIME ANALYSIS — SQL PROJECT
-- Author: Quoc Chien Kieu (Nolan)
-- Dataset: NT Police Crime Data
-- =============================================

-- Query 1: Total offences by year
SELECT 
    Year,
    SUM(Number_of_offences) AS Total_Offences
FROM nt_crime
GROUP BY Year
ORDER BY Year;

-- Query 2: Top 5 offence types
SELECT TOP 5
    Offence_type,
    SUM(Number_of_offences) AS Total
FROM nt_crime
GROUP BY Offence_type
ORDER BY Total DESC;

-- Query 3: Alcohol-related crimes %
SELECT 
    Alcohol_involvement,
    SUM(Number_of_offences) AS Total,
    ROUND(100.0 * SUM(Number_of_offences) / 
        (SELECT SUM(Number_of_offences) FROM nt_crime), 2) AS Percentage
FROM nt_crime
GROUP BY Alcohol_involvement
ORDER BY Total DESC;

-- Query 4: Crime by region
SELECT 
    Reporting_region,
    SUM(Number_of_offences) AS Total
FROM nt_crime
GROUP BY Reporting_region
ORDER BY Total DESC;

-- Query 5: Domestic violence trend
SELECT 
    Year,
    DV_involvement,
    SUM(Number_of_offences) AS Total
FROM nt_crime
GROUP BY Year, DV_involvement
ORDER BY Year, DV_involvement;

-- Query 6: Alice Springs vs Darwin comparison
SELECT 
    Reporting_region,
    Year,
    SUM(Number_of_offences) AS Total
FROM nt_crime
WHERE Reporting_region IN ('Darwin', 'Alice Springs')
GROUP BY Reporting_region, Year
ORDER BY Year, Reporting_region;

-- Query 7: Alcohol-related by region
SELECT 
    Reporting_region,
    SUM(Number_of_offences) AS Total_Alcohol_Related
FROM nt_crime
WHERE Alcohol_involvement = 'Yes'
GROUP BY Reporting_region
ORDER BY Total_Alcohol_Related DESC;

-- Query 8: Monthly crime pattern
SELECT 
    Month_number,
    SUM(Number_of_offences) AS Total
FROM nt_crime
GROUP BY Month_number
ORDER BY Month_number;