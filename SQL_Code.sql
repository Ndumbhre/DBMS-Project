## Create Schema 
CREATE SCHEMA `Lacoste_Online_Sales`;
## Use created schema
USE `Lacoste_Online_Sales`;
## Show table - Transaction log 
SELECT * FROM `Lacoste_Online_Sales`.`Transaction log`;
## Normalise table - transaction log 
CREATE TABLE Customer
(
Customer_ID CHAR(5),
Customer_Name VARCHAR(50) NOT NULL,
Customer_Email VARCHAR(50),
Registered_Phone_No DECIMAL(10) NOT NULL,
Billing_Address VARCHAR(256),
Shipping_Address VARCHAR (256),
CONSTRAINT PKCustomer_ID PRIMARY KEY (Customer_ID)
);
INSERT INTO Customer VALUES ('1', 'Shantanu Potdar', 'shaan.potdar@gmail.com', '6667778989', '10285 Parkwood Dr Apt 10 Cupertino', '10285 Parkwood Dr Apt 10 Cupertino');
INSERT INTO Customer VALUES ('2', 'Pamela Anderson', 'pam.anderson@mail.com', '6781230345', '245 Park lane Rd Apt 4 Sunnyvale', 'Mindspace Omega-Building C San Jose');
INSERT INTO Customer VALUES ('3', 'Puja Rao', 'puja.r@mail.com', '6668880999', 'Northseal Sq H No 101, Cupertino','Northseal Sq H No 101, Cupertino'); 
INSERT INTO Customer VALUES ('4', 'Erica Blue', 'erica.b@mail.com', '6663330444', 'Cresent Park Apt 202 Mountain View', 'North San Jose Tech Park Building21');
INSERT INTO Customer VALUES ('5', 'Ashley Turner', 'ashley.t@mail.com', '6665550666', '245 Park lane Rd Apt 21 Palo Alto','245 Park lane Rd Apt 21 Palo Alto');
INSERT INTO Customer VALUES ('6', 'Ken Neil', 'ken.n@mail.com', '6666660777', 'Northseal Sq H No 220 Cupertino','Northseal Sq H No 220 Cupertino');
INSERT INTO Customer VALUES ('7', 'Noel Simson', 'noel.s@mail.com', '6667770888', 'Blossom Park Rd Domicilio Apt 12 Santa Clara', 'Blossom Park Rd Domicilio Apt 12 Santa Clara');
INSERT INTO Customer VALUES ('8', 'Susan Hay', 'susan.h@mail.com', '6662220333', 'Spring Creek Apt 121 Stevens Creek', 'Spring Creek Apt 121 Stevens Creek');
INSERT INTO Customer VALUES ('9', 'Karen Teal', 'karen.t@mail.com', '6661110222', '123 Cane Spring Apt 3 Fremont', '123 Cane Spring Apt 3 Fremont');
INSERT INTO Customer VALUES ('10', 'Jeff Gomez', 'jeff.g@mail.com', '6780101210', '500 El Camino Real Santa Clara', '500 El Camino Real Santa Clara');
INSERT INTO Customer VALUES ('11', 'Kylie John', 'kylie.j@mail.com', '6664440555', 'Palm Court House No 456 Los Gatos', 'Palm Court House No 456 Los Gatos');
INSERT INTO Customer VALUES ('12', 'Sean Kernen', 'sean.k@mail.com', '6780000123', '1498 Wayfair Garden House No 704 Santa Monica', '1498 Wayfair Garden House No 704 Santa Monica');
INSERT INTO Customer VALUES ('13', 'Rudi Josh', 'rudi.j@mail.com', '6780901004', '1040 Valleyfair Road Milpitas', '1040 Valleyfair Road Milpitas');
INSERT INTO Customer VALUES ('14', 'Will Richard', 'will.r@mail.com', '6780901234', '400 Park View Apt 23 Sunnyvale','400 Park View Apt 23 Sunnyvale');

SELECT * FROM `Lacoste Online Sales`.`Customer`;

CREATE TABLE Product
(
Product_Code CHAR(5),
Product_Description VARCHAR(60) NOT NULL,
Product_Cost DECIMAL(6,2) NOT NULL,
Size CHAR(2) NOT NULL,
Color VARCHAR(16),
CONSTRAINT PKProduct_Code PRIMARY KEY (Product_Code),
CONSTRAINT CSize_Check CHECK (Size in ('XS','S','M', 'L', 'XL'))
);
INSERT INTO Product VALUES ('3HBM', 'Mens Badge Zip Pocket Hooded  Sweatshirt', '81.99', 'S', 'Blue');
INSERT INTO Product VALUES ('0HBM', 'Mens Regular Fit Cotton Poplin Shirt', '65.99', 'S', 'Black');
INSERT INTO Product VALUES ('7HBM', 'Womens Stretch Cotton Piqué Polo Dress', '107.99', 'XL', 'Red');
INSERT INTO Product VALUES ('29HBM', 'Womens SPORT Piqué Tennis Skirt', '62.99', 'XS', 'White');
INSERT INTO Product VALUES ('2HBM', 'Womens Crew Neck Cotton T-shirt', '49.50', 'XS', 'White');
INSERT INTO Product VALUES ('1HBM', 'Oval Bio Acetate National Geographic Sunglasses', '128.99', 'S', 'Black');
INSERT INTO Product VALUES ('9HBM', 'Womens Cotton Trench Coat', '141.99', 'M', 'Green');
INSERT INTO Product VALUES ('4HBM', 'Mens Regular Fit Cotton Polo Shirt', '100.99', 'XL', 'Yellow');
INSERT INTO Product VALUES ('01HBM', 'Mens Carnaby BL Leather Trainers', '65.99', 'XL', 'White');
INSERT INTO Product VALUES ('22HBM', 'Mens Striped Fleece Jogging Pants', '76.99', 'XL', 'Blue');
INSERT INTO Product VALUES ('14HBM', 'Boys Solid gabardine cap', '35.00', 'XL', 'Black');
INSERT INTO Product VALUES ('25HBM', 'Mens Cotton Blend Sock 3-Pack', '83.96', 'L', 'White');
INSERT INTO Product VALUES ('60HBM', 'Womens Jump Serve Lace Canvas Sneakers', '58.99', 'L', 'Black');
INSERT INTO Product VALUES ('00BBM', 'Unisex L.12.12 Adjustable Face Mask', '45.00', 'L', 'Pink');
INSERT INTO Product VALUES ('78HBM', 'Unisex L.12.12 Face Masks 3-Pack', '34.99', 'S', 'Black');
INSERT INTO Product VALUES ('34HBM', 'Womens Double-Sided Corduroy Jacket', '354.99', 'XS', 'Red');
INSERT INTO Product VALUES ('41HBM', 'Womens Cotton Turtleneck', '48.99', 'XS', 'Blue');
INSERT INTO Product VALUES ('5HBM', 'Womens Flared Corduroy Pants', '49.99', 'XS', 'Pink');
INSERT INTO Product VALUES ('8HBM', 'Mens Regular Fit Cotton Oxford Shirt', '143.99', 'XL', 'Yellow');
INSERT INTO Product VALUES ('50HBM', 'Mens Badge Zip Pocket Hooded  Sweatshirt', '81.99', 'L', 'White');
INSERT INTO Product VALUES ('18HBM', 'Mens Stretch Cotton Chino Pants', '89.50', 'L', 'Blue');
INSERT INTO Product VALUES ('99HBM', 'Mens Pennants L Badge Swimming Shorts', '51.99', 'L', 'Black');
INSERT INTO Product VALUES ('08HBM', 'Mens Striped CashmereSweater', '585.00', 'L', 'Yellow');
INSERT INTO Product VALUES ('02HBM', 'Mens Slim Fit Checkered Stretch Cotton shirt', '143.99', 'L', 'Balck');
INSERT INTO Product VALUES ('6HBM', 'Mens Checkered Thick Flannel Overshirt', '71.90', 'M', 'White');

SELECT * FROM `Lacoste Online Sales`.`Product`;

CREATE TABLE PaymentMethod
(
Payment_Method_Code CHAR(5) NOT NULL,
Payment_Method_Description VARCHAR(50),
CONSTRAINT PKPayment_Method_Code PRIMARY KEY (Payment_Method_Code)
);
INSERT INTO PaymentMethod VALUES ('1', 'Credit Card');
INSERT INTO PaymentMethod VALUES ('2', 'American Express');
SELECT * FROM `Lacoste Online Sales`.`PaymentMethod`;

CREATE TABLE ReturnEligibility
(
Return_Eligibility_Code CHAR(2) PRIMARY KEY NOT NULL,
Return_Eligibility_Description VARCHAR(50)
);
INSERT INTO ReturnEligibility VALUES ('1', 'Yes within 30 days of purchase');
INSERT INTO ReturnEligibility VALUES ('2', 'Not eleigible for return exchange');
SELECT * FROM `Lacoste Online Sales`.`ReturnEligibility`;

CREATE TABLE DeliveryMethod
(
Delivery_Method_Code CHAR(2) PRIMARY KEY NOT NULL,
Delivery_Method_Description VARCHAR(50)
);
INSERT INTO DeliveryMethod VALUES ('1', 'At home Standard');
INSERT INTO DeliveryMethod VALUES ('2', 'At Office Standard');
SELECT * FROM `Lacoste Online Sales`.`DeliveryMethod`;

CREATE TABLE TrackingInfo
(
Tracking_Number CHAR(18) PRIMARY KEY NOT NULL,
Estimated_Delivery_Date DATE NOT NULL,
Shipping_Fee DECIMAL(4, 2),
delivery_method_code CHAR(2), 
FOREIGN KEY (delivery_method_code) REFERENCES DeliveryMethod(Delivery_Method_Code)
);
INSERT INTO TrackingInfo VALUES ('1ZE98W210304252259', '2022-01-12', '0','1');
INSERT INTO TrackingInfo VALUES ('1WP09Y871292562798', '2022-01-05', '20','2');
INSERT INTO TrackingInfo VALUES ('2PZ09Y673292562798', '2022-01-31', '0','1');
INSERT INTO TrackingInfo VALUES ('1RF07O673292562123', '2022-01-22', '0','2');
INSERT INTO TrackingInfo VALUES ('0FF01I876292562045', '2022-01-11', '0','1');
INSERT INTO TrackingInfo VALUES ('3GT01I876116761920', '2022-01-22', '0','1');
INSERT INTO TrackingInfo VALUES ('9SD01I124145231901', '2022-01-27', '0','1');
INSERT INTO TrackingInfo VALUES ('5NS01I02411265408', '2022-01-12', '25','1');
INSERT INTO TrackingInfo VALUES ('4SP01L03469654083', '2022-01-24', '0','1');
INSERT INTO TrackingInfo VALUES ('3ER01B03434256012', '2022-01-15', '0','1');
INSERT INTO TrackingInfo VALUES ('2UH01D03434223767', '2022-01-08', '0','1');
INSERT INTO TrackingInfo VALUES ('3RF91J030979231210', '2022-01-10', '0','1');
INSERT INTO TrackingInfo VALUES ('7RT34E05611276349', '2022-01-07', '0','1');
INSERT INTO TrackingInfo VALUES ('8VG91X03097435557', '2022-01-31', '0','1');

SELECT * FROM `Lacoste Online Sales`.`TrackingInfo`;

CREATE TABLE OrderInfo
(
Order_Code CHAR(10) PRIMARY KEY NOT NULL,
Order_Date DATE NOT NULL,
tracking_number CHAR(18), 
payment_method_code CHAR(5), 
return_eligibility_code CHAR(2), 
FOREIGN KEY (tracking_number) REFERENCES TrackingInfo(Tracking_Number),
FOREIGN KEY (payment_method_code) REFERENCES PaymentMethod(Payment_Method_Code),
FOREIGN KEY (return_eligibility_code) REFERENCES ReturnEligibility(Return_Eligibility_Code)
);
INSERT INTO OrderInfo VALUES ('4483288','2022-01-09', '1ZE98W210304252259', '1','1');
INSERT INTO OrderInfo VALUES ('4256123','2022-01-04', '1WP09Y871292562798', '2','1');
INSERT INTO OrderInfo VALUES ('5111342','2022-01-26', '2PZ09Y673292562798', '1','1');	
INSERT INTO OrderInfo VALUES ('4630985','2022-01-18', '1RF07O673292562123', '2','2');	
INSERT INTO OrderInfo VALUES ('4471954','2022-01-07', '0FF01I876292562045', '1','1');	
INSERT INTO OrderInfo VALUES ('4645423','2022-01-18', '3GT01I876116761920', '1','1');	
INSERT INTO OrderInfo VALUES ('5013462','2022-01-22', '9SD01I124145231901', '1','1');	
INSERT INTO OrderInfo VALUES ('4585675','2022-01-12', '5NS01I02411265408', '1','1');	
INSERT INTO OrderInfo VALUES ('4691974','2022-01-20', '4SP01L03469654083', '1','2');	
INSERT INTO OrderInfo VALUES ('4562256','2022-01-11', '3ER01B03434256012', '2','2');	
INSERT INTO OrderInfo VALUES ('4031249','2022-01-02', '2UH01D03434223767', '1','1');	
INSERT INTO OrderInfo VALUES ('4270732','2022-01-05', '3RF91J030979231210', '2','1');	
INSERT INTO OrderInfo VALUES ('4153270','2022-01-03', '7RT34E05611276349', '1','1');	
INSERT INTO OrderInfo VALUES ('5341209','2022-01-27', '8VG91X03097435557', '1','1');	
SELECT * FROM `Lacoste Online Sales`.`OrderInfo`;

CREATE TABLE ProductOrder
(
PO_id INTEGER AUTO_INCREMENT PRIMARY KEY,
order_code CHAR(10), 
product_code CHAR(5), 
Quantity SMALLINT NOT NULL,
FOREIGN KEY (order_code) REFERENCES OrderInfo(Order_Code),
FOREIGN KEY (product_code) REFERENCES Product(Product_Code)
);
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('4483288', '3HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4483288', '0HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4256123', '7HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('5111342', '29HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('5111342', '2HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4630985', '1HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('4471954', '9HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4645423', '4HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4645423', '01HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('4645423', '22HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4645423', '14HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('5013462', '25HBM', '2');
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('4585675', '60HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4691974', '00BBM', '3');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4562256', '78HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('4031249', '34HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4031249', '41HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4031249', '5HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('4270732', '8HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4153270', '50HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4153270', '18HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('4153270', '99HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4153270', '08HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
    VALUES ('4153270', '02HBM', '1');
INSERT INTO ProductOrder (order_code, product_code, quantity)
	VALUES ('5341209', '6HBM', '1');
SELECT * FROM `Lacoste Online Sales`.`ProductOrder`;

CREATE TABLE CustomerOrder
(
CO_id INTEGER AUTO_INCREMENT PRIMARY KEY,
customer_id CHAR(5), 
order_code CHAR(10), 
FOREIGN KEY (customer_id) REFERENCES Customer(Customer_ID),
FOREIGN KEY (order_code) REFERENCES OrderInfo(Order_Code)
);
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('1','4483288');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('2','4256123');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('3','5111342');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('4','4630985');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('5','4471954');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('6','4645423');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('7','5013462');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('8','4585675');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('9','4691974');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('10','4562256');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('11','4031249');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('12','4270732');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('13','4153270');
INSERT INTO CustomerOrder (customer_id, order_code)
	VALUES ('14','5341209');
SELECT * FROM `Lacoste Online Sales`.`CustomerOrder`;

## Assignment 4
USE `Lacoste_Online_Sales`;
SELECT * FROM `Transaction log`;

# 1. Select distinct values of size from the table. 
SELECT distinct(size) from `Transaction log`;

# 2. Count the orders which had more than 1 products
SELECT COUNT(`Quantity`) from `Transaction log` where `Quantity` > 1;

# 3. Highest order on a particular date.
SELECT * from `Transaction log` where `Order Date` = '1/2/2022' order by `Product Cost` LIMIT 1;

# 4. Alter table to add columns ‘Size guide used’ (values - Yes, No).
ALTER TABLE  `Transaction log`
ADD COLUMN `Size Guide Used` boolean default false NOT NULL;
SELECT * FROM `Transaction log`;

# 5. Push the estimated delivery date for products ordered on 1/8/2022 by a day. 
UPDATE  `Transaction log`
SET `Estimated delivery date` = '1/9/2022'
where `Estimated delivery date` = '1/8/2022';
SELECT * FROM `Transaction log`;

# 6. Delete all orders from the database for the customer 'Kylie John'
DELETE from `Transaction log`
where `Customer name` = 'Kylie John';
SELECT * FROM `Transaction log`;

# 7. What is the volume of sales for Product Color - White? 
SELECT SUM(`Quantity`) from `Transaction log` where
`Color` = 'White';

# Drop the '$' signature from the product cost. 
UPDATE  `Transaction log`
SET `Product Cost` = REPLACE(`Product Cost`,'$','');

# Change the data type of the existing column.
ALTER TABLE `Transaction log` 
MODIFY COLUMN `Product Cost` DECIMAL;

# 8. Name the top three customers who bought the highest number of products? 
ALTER TABLE `Transaction log` RENAME COLUMN `ï»¿Customer Name` TO `Customer Name`;
SELECT `Customer Name`, SUM(`Quantity`) from `Transaction log` group by `Customer Name` 
order by SUM(`Quantity`) DESC LIMIT 3;

## Queries on normalised data

# 9. Which customer have first name 'Shantanu'
SELECT*FROM Customer WHERE `customer_name` = 'Shantanu Potdar';

#10. Print product_cost in descending
SELECT*FROM Product order by `product_cost` DESC;

#11. Print product description of all the products which are in blue color
SELECT*FROM Product WHERE `Color` = "Blue"; 

#12. Print products that are unisex. 
SELECT*FROM Product WHERE `Product_Description` LIKE 'Unisex%';

#13. List the most expensive product in store
SELECT MAX(Product_Cost) FROM Product;
SELECT*FROM Product Order By Product_cost DESC LIMIT 1;

#14. List products that cost from 100 - 200
SELECT*FROM Product WHERE `Product_cost` BETWEEN 100 AND 200;

#15. Print product code of all the products that were ordered after 20 Jan 2022.
SELECT*FROM Orderinfo WHERE `Order_date`> '2022-01-20';

## Creating views
CREATE VIEW Tracking AS
SELECT T.Tracking_Number, Estimated_Delivery_Date, Shipping_Fee, Order_code, Order_date FROM TrackingInfo T
INNER JOIN OrderInfo O 
ON T.Tracking_Number = O.Tracking_Number;

## Display all details present in the view
SELECT*
FROM Tracking;

## Creating views
CREATE VIEW Order_And_Product AS
SELECT o.Order_Code, Order_Date, Tracking_Number, Payment_Method_code, Return_eligibility_code, 
product_code, quantity FROM OrderInfo O
Left JOIN ProductOrder p 
ON O.Order_Code = P.Order_Code;

## Display all details present in the view
SELECT*
FROM Order_And_Product;

## SQL - Joins and SubQuery
## 1. Write around 5 SQL statements using Joins, SubQuery concepts

## Join Statement for Joining tables - Order Info & Product Order
SELECT o.Order_Code, Order_Date, Tracking_Number, Payment_Method_code, Return_eligibility_code, PO_id,
product_code, quantity FROM OrderInfo O
Left JOIN ProductOrder p 
ON O.Order_Code = P.Order_Code;

## Join Statement for Joining tables - Customer – customer order – order info - Tracking Info 
## to generate list of customers & their details who opted for paid shipping
SELECT c.Customer_Name, c.Shipping_Address, ti.Shipping_Fee 
FROM customer c
LEFT JOIN customerorder co ON c.customer_id = co.customer_id
LEFT JOIN orderinfo oi ON co.order_code = oi.order_code
LEFT JOIN trackinginfo ti ON oi.tracking_number = ti.tracking_number
WHERE ti.Shipping_Fee > 0;

## Join Statement for Joining tables - customer - customerorder – orderinfo – payment method
## to generate list of customers who have made payment through Credit card
SELECT c.Customer_Name, c.Registered_Phone_No, c.Billing_Address, pt.payment_method_description
FROM customer c
LEFT JOIN customerorder co ON c.customer_id = co.customer_id
LEFT JOIN orderinfo oi ON co.order_code = oi.order_code
LEFT JOIN paymentmethod pt ON oi.payment_method_code= pt.payment_method_code
WHERE pt.payment_method_code =1;

## Join Statement for Joining tables - customer – customerorder – product order - product
## to generate list of customers who have purchased blue color merchandise? 
SELECT c.Customer_Name, c.Registered_Phone_No, c.Shipping_Address, pr.product_description, pr.product_cost, pr.color
FROM customer c
LEFT JOIN customerorder co ON c.customer_id = co.customer_id
LEFT JOIN productorder po ON co.order_code = po.order_code
LEFT JOIN product pr ON po.product_code = pr.Product_Code
WHERE pr.color = 'blue';

## Using sub-query to list all the products that are not eligible for return
SELECT product_description, product_cost, size, color from product WHERE Product_Code IN(
	SELECT Product_code FROM productorder WHERE Order_code IN(
		(SELECT order_code FROM orderinfo WHERE return_eligibility_code = 2)
	)
);

## Using sub-query to answer how many customers selected “at-office standard” delivery method
SELECT customer_name,customer_email, shipping_address from customer WHERE Customer_ID IN(
	SELECT Customer_ID FROM customerorder WHERE order_code IN(
		SELECT order_code FROM orderinfo WHERE tracking_number IN(
			(SELECT tracking_number FROM trackinginfo WHERE delivery_method_code = 2)
		)
	)
);

## Business Questions

# 1. List details of customers who have different billing and shipping address
SELECT * FROM Customer WHERE Billing_Address != Shipping_address;

# 2. What size of product was sold most
SELECT size, count(SIZE) AS Max_Size
FROM product GROUP BY Size
ORDER BY Max_Size DESC LIMIT 1;

# 3. Print tracking number & product code of items which are ordered on 22 Jan 2022.
SELECT OI.Order_code, oi.Order_Date, oi.Tracking_number, p.product_code, p.quantity
FROM OrderInfo oi 
LEFT JOIN ProductOrder p ON oi.ORDER_CODE = p.order_code
WHERE oi.ORDER_DATE = '2022-01-22';

# 4. Print product cost of all the XS sized products
SELECT Product_code, Product_description, Product_cost from Product WHERE Size = 'XS';

# 5. Print all men's merchendise sold 
SELECT * FROM product WHERE Product_Description like ('Mens%');