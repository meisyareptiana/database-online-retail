/* Mengambil data dari tabel */

SELECT * FROM customer;
SELECT * FROM category;
SELECT * FROM product;
SELECT * FROM `order`;

SELECT c.username, p.product_name, o.order_date, o.total_order
FROM `order` AS o
JOIN customer AS c ON o.customer_id = c.customer_id
JOIN product AS p ON o.product_id = p.product_id;
