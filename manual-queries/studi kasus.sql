/* 1 pelanggan membeli 3 produk yang berbeda */
SELECT C.customer_id, C.username
FROM customer C
JOIN (
  SELECT O.customer_id, COUNT(DISTINCT O.product_id) AS jumlah_produk
  FROM `order` O
  GROUP BY O.customer_id
) subquery ON C.customer_id = subquery.customer_id
WHERE subquery.jumlah_produk = 3;


/* Melihat 3 produk yang paling sering dibeli oleh pelanggan */
SELECT P.product_name, COUNT(*) AS popular_product
FROM `order` AS O
JOIN product AS P ON O.product_id = P.product_id
GROUP BY O.product_id
ORDER BY popular_product DESC
LIMIT 3;

/* Melihat Kategori barang yang banyak barangnya */
SELECT C.category_name, COUNT(P.product_id) AS total_product
FROM product AS P
JOIN category AS C ON P.category = C.category_id
GROUP BY P.category
ORDER BY total_product DESC
LIMIT 1;

/* Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir. */
SELECT customer.username, AVG(product.price) AS rata_rata_transaksi
FROM customer
JOIN `order` ON customer.customer_id = `order`.customer_id
JOIN product ON `order`.product_id = product.product_id
WHERE `order`.`order_date` >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY customer.username;



