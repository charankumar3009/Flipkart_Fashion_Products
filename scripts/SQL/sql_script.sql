#1. Top 10 Subcategories by Product Count

SELECT sub_category, COUNT(*) AS product_count
FROM products
GROUP BY sub_category
ORDER BY product_count DESC
LIMIT 10;


#2. Subcategories with Highest Average Discount (min 20 products)

SELECT sub_category, AVG(discount) AS avg_discount, COUNT(*) AS num_products
FROM products
GROUP BY sub_category
HAVING num_products >= 20
ORDER BY avg_discount DESC
LIMIT 10;


#3. Top 10 Brands by Number of Products

SELECT brand, COUNT(*) AS product_count
FROM products
GROUP BY brand
ORDER BY product_count DESC
LIMIT 10;


#4. Top 10 Brands by Average Rating (min 20 products)

SELECT brand, AVG(average_rating) AS avg_rating, COUNT(*) AS num_products
FROM products
GROUP BY brand
HAVING num_products >= 20
ORDER BY avg_rating DESC
LIMIT 10;


#5. Stock Availability by Category

SELECT category, 
       SUM(CASE WHEN out_of_stock = 0 THEN 1 ELSE 0 END) AS in_stock,
       SUM(CASE WHEN out_of_stock = 1 THEN 1 ELSE 0 END) AS out_of_stock,
       COUNT(*) AS total_products
FROM products
GROUP BY category;


#6. Average Selling Price vs Actual Price by Subcategory (Top 10 by Product Count)

SELECT sub_category, 
       COUNT(*) AS product_count,
       AVG(selling_price) AS avg_selling_price,
       AVG(actual_price) AS avg_actual_price
FROM products
GROUP BY sub_category
ORDER BY product_count DESC
LIMIT 10;


#7. Distribution of Products Across Categories

SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;


#8. Top 10 Sellers by Number of Products

SELECT seller, COUNT(*) AS product_count
FROM products
GROUP BY seller
ORDER BY product_count DESC
LIMIT 10;


#9. Average Discount by Brand (min 20 products)

SELECT brand, AVG(discount) AS avg_discount, COUNT(*) AS num_products
FROM products
GROUP BY brand
HAVING num_products >= 20
ORDER BY avg_discount DESC
LIMIT 10;


#10. Category and Subcategory Cross Tabulation

SELECT category, sub_category, COUNT(*) AS product_count
FROM products
GROUP BY category, sub_category
ORDER BY category, product_count DESC;