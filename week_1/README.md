In this assignment, I performed basic data exploration and cleaning using Pandas on the shopping dataset.

1. First, I loaded the CSV file into a Pandas DataFrame and explored the dataset using functions such as head(), tail(), shape, columns and dtypes. The dataset contains 1000 rows and 24 columns.

2. I checked for missing values and found missing data in columns such as discount, what_customers_said, seller_name, videos, seller_information, and variations. The missing values in the 'discount' column were filled with 0 while the missing values in text-based columns were filled with "Not Available".

3. I performed basic operations such as selecting important columns and filtering products based on discount and category. Duplicate records were checked and removed if present.

4. Finally, I created a derived column named total_amount using initial_price and ratings_count. Since the dataset did not contain a quantity column, ratings_count was used as a quantity-like column for deriving total_amount.

5. The cleaned dataset was saved as cleaned_shopping_dataset.csv.