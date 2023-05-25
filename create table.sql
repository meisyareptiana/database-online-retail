CREATE TABLE `customer`(
    `customer_id` INT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    `address` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY(`customer_id`)
);
desc customer;

CREATE TABLE `category`(
    `category_id` INT NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(50) NOT NULL DEFAULT '',
    `explanation` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY(`category_id`)
);
desc category;

CREATE TABLE `product`(
    `product_id` INT NOT NULL AUTO_INCREMENT,
    `product_name` VARCHAR(50) NOT NULL DEFAULT '',
    `category` INT(50) NOT NULL,
    `price` FLOAT(50) NOT NULL,
    PRIMARY KEY(`product_id`),
    FOREIGN KEY (category) REFERENCES category(category_id)
);
desc product;

CREATE TABLE `order`(
    `order_id` INT NOT NULL AUTO_INCREMENT,
    `customer_id` INT(50) NOT NULL,
    `product_id` INT(50) NOT NULL,
    `order_date` DATE NOT NULL,
    `total_order` INT(20) NOT NULL,
    PRIMARY KEY(`order_id`),
    FOREIGN KEY (`product_id`) REFERENCES product(`product_id`),
    FOREIGN KEY (`customer_id`) REFERENCES customer(`customer_id`)
);
desc `order`;

CREATE TABLE `shipper`(
    `shipper_id` INT NOT NULL AUTO_INCREMENT,
    `shipper_name` VARCHAR(50) NOT NULL,
    `phone_number` INT(50) NOT NULL,
    PRIMARY KEY(`shipper_id`)
);
desc shipper;




