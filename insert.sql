/* INSERT DATA to TABLE customer */
INSERT INTO `customer` (username, password, address) VALUES
  ('Meisya','meisya138','surakarta'),
  ('Laila', 'ila987', 'madura'),
  ('Intan','intan567', 'semarang'),
  ('Rakhimatulfitria', 'pipit826','lombok'),
  ('Dian', 'dian275', 'malang'),
  ('Nelna', 'nina917', 'medan'),
  ('Salsa', 'salsa197', 'bandung'),
  ('Gita', 'gita018', 'jogja'),
  ('Zarin', 'zarin134', 'bogor'),
  ('Putri', 'putri042', 'bali');

/* INSERT DATA to TABLE category */
INSERT INTO `category` (category_name, explanation) VALUES
  ('Beverages','Soft drinks, coffees, teas, beers, and ales'),
  ('Condiment', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
  ('Confections','Desserts, candies, and sweet breads'),
  ('Dairy Product', 'Cheeses'),
  ('Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
  ('Meat/Poultry', 'Prepared meats'),
  ('Produce', 'Dried fruit and bean curd'),
  ('Seafood', 'Seaweed and fish'),
  ('Herbs', 'Nutritious herbs'),
  ('Snack', 'Fast food');

/* INSERT DATA to TABLE product */
INSERT INTO `product` (product_name, category, price) VALUES
  ('Yuja Tea', 1, 20000),
  ('Saenggang Cha', 1, 30000),
  ('Gula Malacca', 2, 18000),
  ('Veggie-spread', 2, 40000),
  ('Pavlova', 3, 20000),
  ('Tarte au sucre', 3, 49000),
  ('Queso Cabrales', 4, 30000),
  ('Camembert', 4, 34000),
  ('Ravioli angelo', 5, 19500),
  ('Filo Mix', 5, 7000),
  ('Alice Mutton', 6, 50000),
  ('Taurtiere', 6, 74500),
  ('Tofu', 7, 4000),
  ('Rossle sauercraut', 7, 45000),
  ('Konbu',8, 12000),
  ('Gravad lax',8, 26000),
  ('Habanero papper', 9, 29000),
  ('Galangal', 9, 13000),
  ('Ramyeon', 10, 21000),
  ('Tasto Crab Curry Chips', 10, 10500);
  ('Mishi Kobe Niku', 6, 97000);

/* INSERT DATA to TABLE order */
INSERT INTO `order` (`customer_id`, `product_id`, `order_date`, `total_order`) VALUES
    (1, 2, '2023-05-12', 4),
    (2, 3, '2023-05-01', 5),
    (2, 10, '2023-05-01', 9),
    (3, 1, '2023-05-20', 1),
    (4, 19, '2023-05-08', 2),
    (5, 5, '2023-05-03', 3),
    (6, 11, '2023-04-20', 2),
    (7, 9, '2023-05-04', 6),
    (4, 14, '2023-05-14', 5),
    (8, 4, '2023-05-11', 2),
    (9, 13, '2023-05-05', 4),
    (4, 20, '2023-05-21', 2),
    (6, 12, '2023-05-20', 7),
    (10, 7, '2023-05-25', 1),
    (10, 15, '2023-05-15', 1);



