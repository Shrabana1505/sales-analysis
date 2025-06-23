# 🛒 E-commerce Sales Analysis (Ongoing Project)

This is an ongoing data analysis project using **SQLite** to simulate and explore an e-commerce sales environment. It focuses on understanding customer behavior, product performance, revenue trends, and more through structured SQL queries.

In the near future, I plan to integrate **Python** to automate data generation and enhance analysis.

---

## 🌟 Project Objectives

- Practice relational database design
- Analyze customer, product, and order data using SQL
- Gain insight into revenue, trends, and usage patterns
- Lay the foundation for future Python + visualization integration

---

## 🛠️ Tech Stack

- 📂 **SQLite** – Lightweight database to store and manage e-commerce data
- 🔍 **SQL** – To query and analyze patterns in the data
- 🐘 **DBeaver** – GUI used for database management and query execution

---

## 🗂️ What's Included

### `sales.db`  
A SQLite database containing:
- `customers`: Basic customer info  
- `products`: Items for sale  
- `orders`: Purchase records with quantity and dates  

---

### `table-creation.sql`  
SQL script to:
- Drop existing tables if they exist  
- Create the `customers`, `products`, and `orders` tables with proper keys and relationships  
- Insert initial base data for testing and analysis  

---

### `generate-data.sql` *(optional/coming soon)*  
Planned SQL-based script to insert additional mock data for better testing. Will eventually be replaced by a Python script for dynamic data generation.

---

### `test-queries.sql`  
Contains sanity check queries such as:
- Verifying table structure with `PRAGMA`  
- Viewing sample records from each table  
- Counting rows to confirm data insertion  
- Performing join tests to check foreign key relationships  

---

### `revenue-analysis.sql`  
Focused on understanding income and profits. Includes:
- Total revenue  
- Revenue per product  
- Customer-wise spending  
- Average order value  

---

### `time-based-trend.sql`  
Tracks performance over time. Includes:
- Daily revenue trends  
- Quantity sold per day  
- Peak shopping days  

---

### `product-insights.sql`  
Product performance breakdown. Includes:
- Most ordered products  
- Units sold by product  
- Products never ordered  

---

### `customer-insights.sql`  
Understand customer behavior. Includes:
- Top customers by order count and amount spent  
- City-wise customer distribution  
- Customers who have never placed an order  

---

### `insights.sql`  
A consolidated script combining highlights from all analysis categories. Ideal for storytelling, reporting, or creating dashboards in future steps.

---

## 🔮 Planned Additions

- 🐍 Python script to auto-generate 50+ rows of mock data  
- 📊 Data visualization using Power BI / Tableau / Matplotlib  
- 📁 CSV exports for real-world analysis scenarios  

---

## 🤍 About Me

I’m currently learning data analytics and enjoy building practical, portfolio-ready projects as part of my journey. This project reflects my commitment to understanding real-world data and growing toward a career in **data science**.

Let’s connect if you’d like to collaborate or have suggestions!

---

## 📜 License

This project is shared for educational and learning purposes. Feel free to fork, build on, or reference it with credit.

