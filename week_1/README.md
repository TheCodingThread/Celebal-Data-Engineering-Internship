# Week 1 - Basic Data Exploration and Cleaning Using Pandas

In this assignment, I performed data exploration and data cleaning using the Pandas library on a shopping dataset containing product-related information.

## 1. Dataset Loading and Exploration

- Loaded the CSV dataset into a Pandas DataFrame.
- Explored the dataset structure using functions such as `head()`, `tail()`, `shape`, `columns`, and `dtypes`.

## 2. Missing Value Handling

- Analyzed the dataset for missing values across all columns.
- Identified missing data in columns including `discount`, `what_customers_said`, `seller_name`, `videos`, `seller_information`, and `variations`.
- Replaced missing values in the `discount` column with **0**.
- Filled missing values in text-based columns with **"Not Available"** to maintain data consistency.

## 3. Data Cleaning and Transformation

- Performed column selection and row filtering based on business-relevant attributes such as product category and discount percentage.
- Checked for duplicate records and removed them where applicable to improve data quality.

## 4. Derived Column Creation

- Created a new derived column named `total_amount`.
- Since the dataset did not contain a dedicated `quantity` field, the `ratings_count` column was used as a quantity-like metric.
- Calculated `total_amount` using the formula:

```python
total_amount = initial_price * ratings_count
```

## 5. Data Export

- Saved the cleaned and transformed dataset as `cleaned_shopping_dataset.csv` for further analysis and downstream processing.

## Key Skills Demonstrated

- Python Programming
- Pandas Data Analysis
- Data Exploration
- Missing Value Handling
- Data Cleaning
- Data Transformation
- Derived Feature Creation
- CSV File Operations