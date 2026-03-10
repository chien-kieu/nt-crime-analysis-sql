# 🔍 NT Crime Data Analysis — SQL Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![SSMS](https://img.shields.io/badge/SSMS-CC2927?style=for-the-badge&logo=microsoft&logoColor=white)
![NT Data](https://img.shields.io/badge/Data-NT%20Police-blue?style=for-the-badge)

## 📌 Project Overview
SQL analysis of **Northern Territory Police Crime Data** using Microsoft SQL 
Server Management Studio (SSMS). This project explores crime trends, alcohol 
involvement, domestic violence rates, and regional patterns across the NT 
from 2023–2025.

---

## 🔍 Key Insights

- 🔺 **2024 total offences: 34,419** — significantly higher than 2023 (3,074)
- 👊 **Assault is #1 offence type** (13,122) — followed by Theft (9,343)
- 🍺 **14.4% of offences** involve alcohol — concentrated in Darwin & Alice Springs
- 🏠 **DV offences increased 13x** in 2024 vs 2023 (7,340 vs 551)
- 📍 **Alice Springs crime-per-capita** significantly exceeds Darwin 
  despite 3x smaller population

---

## 📊 Queries Overview

| # | Query | Description |
|---|-------|-------------|
| 1 | Total offences by year | Annual crime trend 2023–2025 |
| 2 | Top 5 offence types | Most common crime categories |
| 3 | Alcohol involvement % | Alcohol-related crime breakdown |
| 4 | Crime by region | Darwin vs Alice Springs vs NT Balance |
| 5 | DV trend by year | Domestic violence year-on-year |
| 6 | Darwin vs Alice Springs | Direct regional comparison |
| 7 | Alcohol by region | Which regions have most alcohol-related crime |
| 8 | Monthly pattern | Seasonal crime trends |

---

## 💻 Sample Query
```sql
-- Top 5 Offence Types
SELECT TOP 5
    Offence_type,
    SUM(Number_of_offences) AS Total
FROM nt_crime
GROUP BY Offence_type
ORDER BY Total DESC;
```

---

## 📁 Dataset

- **Source:** NT Government Open Data
- **Dataset:** NT Police — Recorded Offences
- **Coverage:** Northern Territory, 2023–2025
- **Link:** [data.nt.gov.au](https://data.nt.gov.au)

---

## 🛠️ Tools Used
- **Microsoft SQL Server Express**
- **SQL Server Management Studio (SSMS)**

---

## 👤 Author
**Quoc Chien Kieu (Nolan)**  
Data Analyst | Darwin, NT  
[LinkedIn](https://linkedin.com/in/quoc-chien-kieu) · 
[GitHub](https://github.com/chien-kieu)
