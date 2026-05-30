# Week 2 - SQL-Based Data Analysis

## Objective

The objective of this assignment is to perform SQL-based data analysis using the Superstore dataset. The assignment focuses on data exploration, filtering, aggregation, business-oriented analysis and data validation using SQL queries.

---

## Dataset

**Dataset:** Sample - Superstore.csv

The dataset contains sales transaction records with information related to:

- Orders
- Customers
- Products
- Categories
- Regions
- Sales
- Quantity
- Discounts
- Profit

---

## Tools Used

- MySQL 8.0
- MySQL Workbench
- SQL
- GitHub

---

## Tasks Performed

### 1. Dataset Import

- Created a new database `celebal_week2`
- Imported the Superstore CSV dataset into MySQL
- Created the table `superstore`

### 2. Data Exploration

- Explored table schema using `DESCRIBE`
- Viewed sample records using `SELECT`

### 3. Data Filtering

Applied various filters using the `WHERE` clause:

- Region-wise filtering
- Category-wise filtering
- Date-based filtering
- Sales-based filtering

### 4. Aggregation and Analysis

Used aggregate functions such as:

- SUM()
- AVG()
- COUNT()

Performed aggregations using `GROUP BY` for:

- Sales by Region
- Quantity by Category
- Average Sales by Segment
- Category-wise Performance

### 5. Sorting and Ranking

Used:

- ORDER BY
- LIMIT

to identify:

- Top Products
- Top Categories
- Top Customers

### 6. Business Use Cases

Solved business-oriented analytical queries including:

- Monthly Sales Trends
- Top Revenue-Generating Customers
- Duplicate Record Detection

### 7. Data Validation

Performed data quality checks:

- Row Count Validation
- Missing Value Checks (sales, profit, customers)

---

## Project Structure

```text
week_2/
│
├── query_results/
├── assignment.sql
└── README.md
```

---

## Learning Outcomes

Through this assignment, I gained hands-on experience with:

- Writing SQL queries for data analysis
- Filtering and aggregating data
- Performing business-oriented analysis
- Working with real-world sales datasets
- Using MySQL Workbench for database operations
- Validating and interpreting analytical results

---

## Author

Sebin Eapen

Celebal Excellence Internship (Data Engineer) - Celebal Technologies