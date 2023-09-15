.read data.sql


CREATE TABLE average_prices AS
  SELECT category, AVG(MSRP) AS average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price) AS min_price FROM inventory GROUP BY item;


CREATE TABLE names AS
SELECT name FROM products GROUP BY category HAVING MIN(MSRP/rating);


CREATE TABLE shopping_list AS
  SELECT name, store FROM names, lowest_prices WHERE name = item;


CREATE TABLE total_bandwidth AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";

