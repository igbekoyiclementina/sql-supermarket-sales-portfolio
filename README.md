# sql-supermarket-sales-portfolio
SQL Project:

Project Overview

This is a beginner-level SQL portfolio project demonstrating practical SQL skills using real-world supermarket sales data. The project showcases my ability to query, filter, aggregate, and analyze transactional data using MySQL Workbench.

Objective: Demonstrate foundational SQL competencies through hands-on analysis of 1,000 sales transactions, delivering actionable business insights.

Dataset Information:
Dataset: Supermarket Sales Dataset  
Source: Kaggle - Supermarket Sales (https://www.kaggle.com/datasets/faresashraf1001/supermarket-sales)  
Period: January - March 2019  
Records: 1,000 transactions  
Format: CSV 
Number of columns: 17 

 Business Context
The dataset represents sales from a supermarket chain operating across three cities in Myanmar:
- Yangon
- Naypyitaw
- Mandalay

It captures comprehensive transaction details including customer demographics, product categories, payment methods, and financial performance metrics.

Data Dictionary
| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| `Invoice ID` | VARCHAR | Unique transaction identifier |
| `Branch` | VARCHAR | Supermarket branch code (A, B, C) |
| `City` | VARCHAR | Branch location city |
| `Customer Type` | VARCHAR | Member or Normal customer |
| `Gender` | VARCHAR | Customer gender |
| `Product Line` | VARCHAR | Product category purchased |
| `Unit Price` | DECIMAL | Price per unit |
| `Quantity` | INT | Number of units purchased |
| `Tax 5%` | DECIMAL | Tax amount (5% of subtotal) |
| `Total` | DECIMAL | Total transaction amount (including tax) |
| `Date` | DATE | Transaction date |
| `Time` | TIME | Transaction time |
| `Payment` | VARCHAR | Payment method (Cash, E-wallet, Credit card) |
| `COGS` | DECIMAL | Cost of goods sold |
| `Gross Margin Percentage` | DECIMAL | Margin percentage (4.7619%) |
| `Gross Income` | DECIMAL | Profit from transaction |
| `Rating` | DECIMAL | Customer satisfaction rating (1-10) |

Tools & Technologies
- Database: MySQL Server
- IDE: MySQL Workbench
- Data Preparation: Microsoft Excel
- Version Control: GitHub
- Kaggle

Methodology & Analysis Approach

Data Preparation & Schema Design
- Imported CSV data into MySQL database
- Optimized data types for all columns (converted to appropriate numerical formats)
- Ensured data integrity and consistency across 1,000 records
- Validated financial calculations (tax, totals, gross income)

 Exploratory Data Analysis
Categorical Analysis:
- Identified unique branches, cities, and product lines
- Analyzed distribution of customer types and payment methods

Pattern Discovery:
- Applied text filtering to isolate city-specific trends
- Investigated payment preference patterns across demographics

Business Intelligence & Aggregation
Product Performance Metrics:
- Calculated average, minimum, and maximum satisfaction ratings per product line
- Identified top and bottom-performing product categories

Sales Volume Analysis:
- Summarized transaction quantities to identify fast-moving inventory
- Analyzed purchasing patterns by customer type

Financial Health Assessment:
- Evaluated COGS and gross income across branches
- Compared profitability metrics between cities

Advanced Filtering & Segmentation
Customer Behavior Analysis:
- Isolated high-value transactions (above specific thresholds)
- Identified bulk-buying patterns through quantity analysis

Aggregate Constraints:
- Filtered grouped data to find outlier transactions
- Applied HAVING clauses to identify significant patterns

Ranking & Prioritization:
- Ranked transactions by satisfaction scores
- Highlighted top-performing transactions for case studies

 Key Business Insights:
 Revenue Drivers
Top Product Categories: Food and Beverages and Fashion Accessories consistently generated the highest gross income, indicating these are the supermarket's primary revenue drivers.
 Customer Satisfaction
Unexpected Finding: "Normal" customers provided slightly higher average satisfaction ratings compared to "Member" customers, suggesting an opportunity to enhance the membership value proposition.
 Payment Trends
Digital Adoption: E-wallet usage is nearly equal to Cash and Credit Card payments across all cities, demonstrating strong digital payment adoption in the region.
 Regional Performance
Stable Leader: Naypyitaw maintained the most consistent average ratings across all product categories, while all three cities showed comparable sales volumes.


SQL Skills Demonstrated in this project
This project showcases proficiency in:

Data Definition Language (DDL): Creating and modifying database schemas  
Data Manipulation Language (DML): Querying and filtering data  
Aggregate Functions: SUM, AVG, MIN, MAX, COUNT  
Grouping & Filtering: GROUP BY, HAVING clauses  
Sorting & Ranking: ORDER BY operations  
Text Filtering: Pattern matching with LIKE and wildcards  
Multi-condition Logic: Complex WHERE clauses with AND/OR  
Data Type Optimization: Proper use of DECIMAL, INT, DATE, TIME types  
SQL Order of Execution: Understanding query processing sequence

Project Outcomes:

Technical Achievement: Successfully migrated flat CSV data into a structured relational database, demonstrating database design and normalization principles.
Analytical Value: Delivered actionable insights on customer behavior, product performance, and regional trends that could inform inventory management, marketing strategies, and customer loyalty programs.
Professional Development: Built a portfolio-ready project that demonstrates real-world SQL skills applicable to data analyst and business intelligence roles.

Repository Structure
supermarket-sales-sql/
│
├── data/
│   └── supermarket_sales.csv
│
├── sql/
│   ├── 01_schema_creation.sql
│   ├── 02_data_import.sql
│   ├── 03_exploratory_queries.sql
│   ├── 04_business_analysis.sql
│   └── 05_advanced_queries.sql
│
├── documentation/
│   └── analysis_report.md
│
└── README.md


Contact
LinkedIn: linkedin.com/in/idowuigbekoyi  
Email: igbekoyiclementina@yahoo.com  

License
Project inspired by real-world business analytics scenarios. This project uses a public dataset from Kaggle. Please refer to the [original dataset](https://www.kaggle.com/datasets/faresashraf1001/supermarket-sales) for licensing information.

References
Fares Ashraf. Supermarket Sales. Kaggle, www.kaggle.com/datasets/faresashraf1001/supermarket-sales
Accessed January 2026.

Last Updated: January 2026
