# Data Dictionary – Flipkart Fashion Products Project

This document describes the fields used in the Flipkart Fashion Products dataset as visualized in the dashboard.

## Columns

| Column Name      | Type      | Description                                                             |
|------------------|-----------|-------------------------------------------------------------------------|
| `product_id`     | string    | Unique identifier for the product                                       |
| `product_name`   | string    | Name/title of the fashion product                                       |
| `brand`          | string    | Brand associated with the product (filled with 'Others' if missing)     |
| `category`       | string    | Main product category (e.g., Clothing and Accessories, Footwear)        |
| `sub_category`   | string    | Sub-category for more specific classification (e.g., Topwear, Blazers)  |
| `actual_price`   | float     | Original price before discount (in INR)                                 |
| `selling_price`  | float     | Actual selling price (in INR)                                           |
| `discount`       | float     | Discount percentage (0 if not available)                                |
| `average_rating` | float     | Average customer rating (filled with mean if missing)                   |
| `total_ratings`  | int       | Number of ratings received                                              |
| `seller`         | string    | Seller name (filled with 'Others' if missing)                           |
| `stock_status`   | string    | Product availability/status (e.g., 'In stock', 'Out of stock')          |
| `product_url`    | string    | Flipkart product page URL                                               |
| `image_url`      | string    | Link to product image                                                   |
| `crawled_at`     | datetime  | Date and time when data was collected                                   |

## Notes

- All missing `brand`, `category`, `sub_category`, or `seller` values are filled with 'Others'.
- All missing `discount` values are filled with 0.
- All missing `average_rating` values are filled with the column mean.
- Rows with missing `selling_price` or `actual_price` are dropped.
- `stock_status` is used for "Stock Availability" visuals.

## Key Fields for Dashboard Visuals

- **Category / Sub Category:** Used for distribution, price, discount, and product count visuals.
- **Brand:** Used for brand count, average rating, and product count by brand.
- **Seller:** Used for "Sellers with most products".
- **Stock Status:** Used for "Stock Availability (Out of stock)" visual.
- **Price and Discount:** Used for price range, average selling price, and average discount visuals.
- **Ratings:** Used for "Brands with highest Avg rating" and general product quality measures.
