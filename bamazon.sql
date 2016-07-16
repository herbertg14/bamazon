CREATE DATABASE Bamazon; 

USE Bamazon; 

CREATE TABLE Products(
	ItemID int NOT NULL AUTO_INCREMENT,
	ProductName VARCHAR(50),
	DepartmentName VARCHAR(50),
	Price DECIMAL(5,2),
	StockQuantity int,
	PRIMARY KEY(ItemID) 
);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("GameBoy", "Video Games", 79.99, 1000);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Flat Screen TV", "Entertainment", 200.00, 100);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Pots and Pans", "Kitchen", 49.99, 800);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Hammock", "Outdoors", 79.99, 689);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Headphones	", "Entertainment", 19.99, 1000);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Speakers", "Entertainment", 199.99, 500);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Lamp", "Living Room", 9.99, 500);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Laptop Computer", "Entertainment", 999.99, 100);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Tent", "Outdoors", 150.00, 1000);

INSERT INTO Products (ProductName,DepartmentName,Price, StockQuantity)
VALUES ("Blanket", "Living Room", 5.99, 10000);