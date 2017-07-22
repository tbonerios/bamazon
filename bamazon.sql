DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;


CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
  item_id VARCHAR(100) NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price INT default 0,
  stock_quantity VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("book1", "Moby Dick", "books", 10, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("skillet1", "Skillet", "kitchen", 15, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("album1", "Rush", "Albums", 5, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("book2", "Roots", "books", 10, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("pot1", "Boiling Pot", "kitchen", 15, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("mixer1", "KitchenAid", "appliances", 50, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("dogbed1", "DogBed", "pets", 30, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("pillow1", "Pillow", "bedding", 15, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("waterhose1", "Water Hose", "lawn", 15, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("laptop1", "Mac Pro", "computer", 15, 10);

w