# Supply Chain Management Analytics

## Project Overview

This project analyzes supply chain data to understand sales performance, customer behavior, shipping operations, and delivery risks.

The project uses **Python, MySQL, and Power BI** to clean data, answer business questions using SQL, and create an interactive dashboard for analyzing supply chain performance.

## Project Objectives

- Analyze overall sales and order performance.
- Identify product categories and markets generating the most sales.
- Understand customer segment performance.
- Analyze shipping modes and delivery risks.
- Study yearly and monthly sales trends.
- Identify high-performing products and departments.
- Present important business metrics through a Power BI dashboard.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning, preprocessing, and feature engineering |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical operations |
| MySQL | SQL queries and business analysis |
| Power BI | Interactive dashboard and data visualization |

## Project Workflow

### 1. Data Cleaning Using Python

The dataset was processed using Python and Pandas.

Tasks included:
- Loading the supply chain dataset.
- Standardizing column names into lowercase with underscores.
- Handling missing values.
- Checking duplicate rows and columns.
- Creating additional analytical columns.

New columns created include:
- `shipping_delay_days`
- `profit_per_order_item`
- `order_month`
- `sales_category`
- `delievery_performance`

### 2. SQL Analysis Using MySQL

The cleaned dataset was imported into MySQL for querying and business analysis.

**Database:** `supply_chain_management`

**Table:** `supply_chain_analysis`

Key SQL analysis areas:
1. Overall order performance.
2. Late-delivery risk.
3. Shipping mode analysis.
4. Sales by product category.
5. Sales by market.
6. Monthly sales trends.
7. Customer segment analysis.
8. Department sales performance.
9. Regional delivery risk.
10. Top products by sales.

These queries help convert raw data into useful business information.

### 3. Power BI Dashboard

A dashboard was developed to visualize supply chain performance through KPI cards, charts, and filters.

Dashboard components include:
- Total Orders
- Unique Customers
- Total Sales (USD)
- Yearly Sales Trend
- Monthly Sales Trend
- Late Delivery Risk Analysis
- Orders by Shipping Mode
- Sales by Product Category
- Sales by Market
- Sales by Customer Segment
- Sales by Department
- Late Delivery Risk by Region
- Top 10 Products by Sales

Slicers are used to support interactive filtering of the report.

## Key Business Questions

This project focuses on questions such as:

- How much sales revenue does the business generate?
- How do sales change over time?
- Which markets contribute the most revenue?
- Which product categories perform best?
- Which shipping modes handle the most orders?
- Which customer segments generate the most sales?
- Which regions have higher late-delivery risk?
- Which products have the highest sales?

## Skills Demonstrated

- Data cleaning and preprocessing
- Exploratory data analysis
- Feature engineering
- SQL aggregation, grouping, and filtering
- Business problem-solving
- KPI development
- Data visualization
- Dashboard design
- Supply chain analytics

## Project Structure

```text
Supply-Chain-Management-Analytics/
│
├── data/
│   └── DataCoSupplyChainDataset.csv
│
├── notebooks/
│   └── supply_chain_analysis.ipynb
│
├── sql/
│   └── supply_chain_queries.sql
│
├── powerbi/
│   └── supply_chain_dashboard.pbix
│
└── README.md
```

*Adjust the folder and file names to match the files actually present in your repository.*

## How to Run the Project

### Python

1. Download or extract the dataset.
2. Open the Python notebook in Jupyter Notebook or VS Code.
3. Update the dataset file path.
4. Run the cells to clean and prepare the data.

Install the required Python libraries:

```bash
pip install pandas numpy matplotlib seaborn
```

### MySQL

1. Create the database `supply_chain_management`.
2. Import the cleaned dataset into the `supply_chain_analysis` table.
3. Open the SQL script in MySQL Workbench.
4. Execute the queries to explore the business questions.

### Power BI

1. Open the `.pbix` dashboard file in Power BI Desktop.
2. Refresh the data source if required.
3. Use the charts and slicers to explore the results.

## Conclusion

This project demonstrates an end-to-end data analytics workflow, from raw data preparation to SQL-based analysis and interactive reporting.

It combines Python programming, database querying, and business intelligence to support data-driven supply chain decisions.

---

**Author:** Raj Roshan Tiwari  
**Domain:** Supply Chain Analytics | Data Analytics  
**Technologies:** Python | MySQL | Power BI
