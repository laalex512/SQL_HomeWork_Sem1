
# Задание 1
CREATE DATABASE homework1;
USE homework1;
CREATE TABLE phone
(
	Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	ProductName VARCHAR(45) NOT NULL,
	Manufacturer VARCHAR(45) NOT NULL,
	ProductCount INT NOT NULL,
	Price INT NOT NULL
);

INSERT phone(ProductName, Manufacturer, ProductCount, Price)
VALUES 
	("iPhone X", "Apple", 3, 76000),
    ("iPhone X", "Apple", 2 , 51000),
    ("Galaxy S9", "Samsung", 2, 56000),
    ("Galaxy S8", "Samsung", 1, 41000),
    ("P20 Pro", "Huawei", 5, 36000);
    
SELECT * FROM phone;

# Задание 2
SELECT ProductName, Manufacturer, Price FROM phone WHERE ProductCount>2;

# Задание 3
SELECT * FROM phone WHERE Manufacturer="Samsung";

# Задание 4
SELECT * FROM phone WHERE ProductCount*Price>100000 AND ProductCount*Price<145000;

# Задание 4.1
SELECT * FROM phone WHERE ProductName LIKE "%Iphone%";

# Задание 4.2
SELECT * FROM phone WHERE ProductName LIKE "%Galaxy%";

# Задание 4.3
SELECT * FROM phone WHERE ProductName RLIKE "\d?";
SELECT * FROM phone WHERE ProductName REGEXP "\d?";

# Задание 4.4
SELECT * FROM phone WHERE ProductName LIKE "%8%";