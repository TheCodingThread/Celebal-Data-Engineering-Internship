# Week 2 Task 2 - E-Commerce Sales Database

## Overview

This project is part of the Celebal Technologies Data Engineering Internship Program (Week 2).

The objective of this task is to design and analyze an E-Commerce Sales Database using SQL. The project covers database creation, table relationships, constraints, indexing, data retrieval, filtering, aggregation, joins, transactions, and advanced SQL concepts.

---

## Database Schema

The database consists of four related tables:

### 1. Customers

Stores customer information including:

- Customer ID
- Name
- Email
- City
- State
- Join Date
- Premium Membership Status

### 2. Products

Stores product information including:

- Product ID
- Product Name
- Category
- Brand
- Unit Price
- Available Stock

### 3. Orders

Stores order information including:

- Order ID
- Customer ID
- Order Date
- Order Status
- Total Amount

### 4. Order Items

Stores item-level order details including:

- Item ID
- Order ID
- Product ID
- Quantity
- Unit Price
- Discount Percentage

---

## Entity Relationships

```text
customers (1:N) orders

orders (1:N) order_items

products (1:N) order_items
```

### Foreign Keys

| Table | Foreign Key | References |
|---------|---------|---------|
| orders | customer_id | customers.customer_id |
| order_items | order_id | orders.order_id |
| order_items | product_id | products.product_id |

---

## Concepts Covered

### SQL Basics

- SELECT
- DISTINCT
- Constraints
- Primary Keys
- Foreign Keys
- UNIQUE Constraint
- CHECK Constraint

### Filtering & Optimization

- WHERE Clause
- Date Filtering
- Range Queries
- Indexes
- Query Optimization
- SARGable Queries

### Aggregation

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING

### Joins

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Multi-table JOINs

### Advanced SQL

- CASE Statements
- ACID Properties
- Transactions
- COMMIT
- ROLLBACK

---

## Files Included

### ecommerce_sales_database.sql

Contains:

- Database creation
- Table creation
- Constraints
- Index creation
- Sample data insertion

### answers.md

Contains solutions for:

- Section A (SQL Basics)
- Section B (Filtering & Optimization)
- Section C (Aggregation)
- Section D (Joins & Relationships)
- Section E (Advanced Concepts)

---

## Learning Outcomes

Through this task, I gained hands-on experience with:

- Relational Database Design
- Data Modeling
- SQL Query Writing
- Data Retrieval and Filtering
- Aggregation and Reporting
- Database Constraints
- Indexing Concepts
- Table Relationships
- Transaction Management
- ACID Principles

---

## Technologies Used

- MySQL 8.0
- MySQL Workbench
- SQL

---

## Author

Sebin Eapen

Celebal Excellence Internship (Data Engineer) - Celebal Technologies