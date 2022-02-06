/* Student name:  Ali Siddique            */

/* SECTION 1 CREATE TABLE STATEMENTS */

/*Create customer table*/
CREATE TABLE adck853_Customer(
    Customer_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(Customer_id),
    Name_of varchar(255),
    Customer_address varchar(255),
    Contact int,
    Payment_info int,
    Date_of_birth int
    
);


/*Create order table*/

CREATE TABLE adck853_Order( 
    Order_number INT UNSIGNED NOT NULL AUTO_INCREMENT, 
PRIMARY KEY(Order_number), 
Name_of varchar(255), 
Customer_address varchar(255), 
Date_shipping int, 
Customer_id INT UNSIGNED NOT NULL UNIQUE, 
Time_bought int, 
FOREIGN KEY (Customer_id) REFERENCES adck853_Customer(Customer_id) );

/*Create parcel table*/

CREATE TABLE adck853_Parcel( Tracking_number INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
Order_number INT UNSIGNED NOT NULL, 
Estimated_arrival int,Delivery_charge DECIMAL(20, 2), 
Weight DECIMAL(10, 2), 
FOREIGN KEY (Order_number) REFERENCES adck853_Order(Order_number) );



/*Create product table*/

CREATE TABLE adck853_Products(
    Product_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Product_name varchar(255),
    Quanitity varchar(255),
    Reference_number INT,
    Order_number INT,
    Price INT(20)
);


/*Create employee table*/

CREATE TABLE adck853_Employees( Employee_id INT UNSIGNED PRIMARY KEY , 
Department varchar(255),
 Name_of_Employee varchar(255), 
 Salary int(25), 
 Role_type varchar(50), 
 Contract_type varchar(50), 
 Product_id INT UNSIGNED, 
 FOREIGN KEY (Product_id) REFERENCES adck853_Products(Product_id) );


/*Create supplier table*/

CREATE TABLE adck853_Suppliers( 
 Supplier_name varchar(255)  PRIMARY KEY, 
Vehicle varchar(255), 
Hours_worked INT, 
Track_number INT, 
Product_id INT UNSIGNED UNIQUE, 
FOREIGN KEY (Product_id) REFERENCES adck853_Products(Product_id) 
);
 /*Create order product relation table*/

CREATE TABLE adck853_OrderProductRelation( Order_number INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
Product_id INT UNSIGNED NOT NULL, 
FOREIGN KEY (Order_number) REFERENCES adck853_Order(Order_number), 
FOREIGN KEY (Product_id) REFERENCES adck853_Products(Product_id) );











/* SECTION 2 INSERT STATEMENTS */



/*Customer INSERTS */

INSERT INTO adck853_Customer
VALUES(1, 'Ali Siddique', '10 Downing Street', 07191919191, 09090912, 20020404);


INSERT INTO adck853_Customer
VALUES(2, 'Sebastian Siddique', '11 Downing Street', 07191919192, 09090913, 20020405);


INSERT INTO adck853_Customer
VALUES(3, 'Sam Siddique', '12 Downing Street', 07191919193, null, 20020406);


INSERT INTO adck853_Customer
VALUES(4, 'Matt Siddique', '13 Downing Street', 07191919194, 09090915, 20020407);


INSERT INTO adck853_Customer
VALUES(5, 'Aliya Siddique', '14 Downing Street', 0719191915, 09090916, 20020408);



INSERT INTO adck853_Customer
VALUES(6, 'Chris Siddique', '15 Downing Street', 07191919196, 09090917, 20020409);


INSERT INTO adck853_Customer
VALUES(7, 'Lily Siddique', '16 Downing Street', 07191919197, 09090918, 20020410);


INSERT INTO adck853_Customer
VALUES(8, 'Noam Siddique', '17 Downing Street', 07191919198, 09090919, 20020411);

INSERT INTO adck853_Customer
VALUES(9, 'Jeff Siddique', '18 Downing Street', 07191919199, 09090920, 20020412);

INSERT INTO adck853_Customer
VALUES(10, 'Elon Siddique', '19 Downing Street', 07191919120, 09090921, 20020413);

INSERT INTO adck853_Customer
VALUES(11, 'Patt Siddique', '20 Downing Street', 07191919121, 09090922, 20020414);






/*Order INSERTS */
INSERT INTO adck853_Order 
VALUES(1,'To House','10 Downing Street', null, 1, 0805);

INSERT INTO adck853_Order 
VALUES(2,'To Warehouse','11 Downing Street', 20210402, 2, 0806);

INSERT INTO adck853_Order 
VALUES(3,'To Home','12 Downing Street', 20210403, 3, 0807);

INSERT INTO adck853_Order 
VALUES(4,'To Home','13 Downing Street', 20210404, 4, 0808);

INSERT INTO adck853_Order 
VALUES(5,'To Warehouse','14 Downing Street', 20210405, 5, 0809);

INSERT INTO adck853_Order 
VALUES(6,'To Warehouse','15 Downing Street', 20210406, 6, 0810);

INSERT INTO adck853_Order 
VALUES(7,'To Home','16 Downing Street', 20210407, 7, 0811);

INSERT INTO adck853_Order 
VALUES(8,'To Warehouse','17 Downing Street', 20210408, 8, 0812);

INSERT INTO adck853_Order 
VALUES(9,'To Home','18 Downing Street', 20210409, 9, 0813);


INSERT INTO adck853_Order 
VALUES(10,'To Home','19 Downing Street', 20210410, 10, 0814);

INSERT INTO adck853_Order 
VALUES(11,'To Home','20 Downing Street', 20210411, 11, 0815);






/*Parcel INSERTS */

INSERT INTO adck853_Parcel 
VALUES (1, 1, 20210403, null, 35);

INSERT INTO adck853_Parcel 
VALUES (2, 2, 20210406, 2.99, 244);

INSERT INTO adck853_Parcel 
VALUES (3, 3, 20210423, 1.99, 10);


INSERT INTO adck853_Parcel 
VALUES (4, 4, 20210203, 0.99, 1);

INSERT INTO adck853_Parcel 
VALUES (5, 5, 20210703, 20.99, 49);


INSERT INTO adck853_Parcel 
VALUES (6, 6, 20200403, 2.49, 23);


INSERT INTO adck853_Parcel 
VALUES (7, 7, 20200403, 5.78, 28);


INSERT INTO adck853_Parcel 
VALUES (8, 8, 20200403, 4.83, 59);

INSERT INTO adck853_Parcel 
VALUES (9, 9, 20200403, 9.79, 48);


INSERT INTO adck853_Parcel 
VALUES (10, 10, 20210403, 47.90, 50);


INSERT INTO adck853_Parcel 
VALUES (11, 11, 20210403, 10.95, 9);





/* Product INSERTS */

INSERT INTO adck853_Products
VALUES(1, 'Blanket', 4, 1, null, 20);


INSERT INTO adck853_Products
VALUES(2, 'Jacket', 2, 2, 72, 27);
INSERT INTO adck853_Products
VALUES(3, 'Socks', 2, 3, 36, 3.20);

INSERT INTO adck853_Products
VALUES(4, 'Hat', 1, 4, 27, 1.10);


INSERT INTO adck853_Products
VALUES(5, 'Tshirt', 5, 5, 2, 15.50);

INSERT INTO adck853_Products
VALUES(6, 'Vest', 6, 6, 49, 10.46);

INSERT INTO adck853_Products
VALUES(7, 'Watch', 7, 7, 68, 170);


INSERT INTO adck853_Products
VALUES(8, 'Trouser', 8, 8, 189, 50.40);


INSERT INTO adck853_Products
VALUES(9, 'Belt', 9, 9, 40, 70);


INSERT INTO adck853_Products
VALUES(10, 'Shoes', 10, 2, 28, 500);


INSERT INTO adck853_Products
VALUES(11, 'Earing', 11, 5, 40, 24.70);

INSERT INTO adck853_Products
VALUES(12, 'Ring',12, 12, 29, 11);




/* OrderProductRelation  INSERTS */
INSERT INTO adck853_OrderProductRelation 
VALUES (1,1);

INSERT INTO adck853_OrderProductRelation 
VALUES (2,2);

INSERT INTO adck853_OrderProductRelation 
VALUES (3,3);

INSERT INTO adck853_OrderProductRelation 
VALUES (4,4);

INSERT INTO adck853_OrderProductRelation 
VALUES (5,5);


INSERT INTO adck853_OrderProductRelation 
VALUES (6,6);


INSERT INTO adck853_OrderProductRelation 
VALUES (7,7);


INSERT INTO adck853_OrderProductRelation 
VALUES (8,8);


INSERT INTO adck853_OrderProductRelation 
VALUES (9,9);



INSERT INTO adck853_OrderProductRelation 
VALUES (10,10);


INSERT INTO adck853_OrderProductRelation 
VALUES (11,11);





/* Employee  INSERTS */


INSERT INTO adck853_Employees
VALUES(1, 'Finance', 'Aman smith', 20000, null, 'Permanent', 1);

INSERT INTO adck853_Employees
VALUES(2,'Human Resources', 'Sam Smith', 20000, 'Technician', 'temporary', 2);


INSERT INTO adck853_Employees
VALUES(3,'R&D', 'Samuel Jackson', 50500, 'Scientist', 'Permanent', 3);


INSERT INTO adck853_Employees
VALUES(4,'Production', 'Chris Pine', 47000, 'Analyst', 'temporary', 4);


INSERT INTO adck853_Employees
VALUES(5,'Marketing', 'Larry Lawrence', 27500, 'Manager', 'Permanent', 5);

INSERT INTO adck853_Employees
VALUES(6,'Accounts', 'Jennifer Pine', 70000, 'Assistant', 'Permanent', 6);



INSERT INTO adck853_Employees
VALUES(7,'Production', 'David Copland', 34000, 'Analyst', 'temporary', 7);


INSERT INTO adck853_Employees
VALUES(8,'Production', 'James Samuel', 25990, 'Manager', 'temporary', 8);



INSERT INTO adck853_Employees
VALUES(9,'Sales', 'Tim Cook', 13500, 'Representative', 'Permanent', 9);


INSERT INTO adck853_Employees
VALUES(10,'Operations', 'Steve Jobs', 170000, 'Personel', 'Permanent', 10);


INSERT INTO adck853_Employees
VALUES(11,'Finance', 'Martin Lawrence', 145000, 'Manager', 'Permanent', 11);

INSERT INTO adck853_Employees
VALUES(12,'Sales', 'Jeff Khan', 137500, 'Manager', 'Permanent', 12);



/*  Supplier INSERTS */
INSERT INTO adck853_Suppliers
VALUES('Clothing Supplier LTD', 'Lorry', 37, null, 1);

INSERT INTO adck853_Suppliers
VALUES('Magna LTD', 'Lorry', 27, 204841, 2);


INSERT INTO adck853_Suppliers
VALUES('Samuel Clothing ', 'Car', 31, 204843, 3);


INSERT INTO adck853_Suppliers
VALUES('MDV', 'Van', 35, 204844, 4);



INSERT INTO adck853_Suppliers
VALUES('London Mens', 'Bike', 33, 204845, 5);


INSERT INTO adck853_Suppliers
VALUES('Sapien Clothing', 'Helicopter', 25, 204846, 6);


INSERT INTO adck853_Suppliers
VALUES('Water Man', 'Van', 47, 204847, 7);


INSERT INTO adck853_Suppliers
VALUES('Denims', 'Car', 54, 204812, 8);


INSERT INTO adck853_Suppliers
VALUES('Clothing maker', 'Lorry', 49, 204813, 9);


INSERT INTO adck853_Suppliers
VALUES('RED Clothing', 'Van', 39, 204814, 10);




/* SECTION 3 UPDATE STATEMENTS */

/*update name of customer when the customer id is 2 or less and starts with a*/
UPDATE adck853_Customer
SET `Name_of` = 'Alfred Siddique', `Customer_address`= '74 Hogsmede'
WHERE `Customer_id` <= 2 AND Name_of LIKE 'a%'; 
/*update name of order WHEN THE Time bought is above 0807 or when the customer id is 2 */

UPDATE adck853_Order
SET `Name_of`='To Home'
WHERE `Time_bought` > 0813 OR (Customer_id = 2 AND NOT NULL);













/* SECTION 4 SINGLE TABLE QUERIES */
/* List product name and id where the name has an a in it and where the quanitiy is above 5 group by name */

SELECT `Product_name`,`Product_id` 
FROM adck853_Products 
WHERE `Product_name` LIKE '%a%' AND `Quanitity` > 5 
OR NOT NULL GROUP BY `Product_name`;


/* Find the minimum salary where the contract is permanent and the salary is at least 50000 or if the name has an e in it */
SELECT MIN(`Salary`), `Name_of_Employee`
FROM adck853_Employees
WHERE (`Contract_type` = 'Permanent' AND `Salary` >= 5000) OR (`Name_of_Employee` LIKE '%e%');


/* Find average of time bought and name it  average_time where the time bought is between 0808 and 0810*/
SELECT AVG(`Time_bought`) AS average_time, `Name_of`, `Customer_address`
FROM adck853_Order 
WHERE `Time_bought` BETWEEN 0808 AND 0810;


/* Find numver of rows of ETA and display order number and weight group by trakcking number and order by weight */
SELECT COUNT(`Estimated_arrival`), `Order_number`, `Weight` 
FROM adck853_Parcel 
WHERE `Weight` > 29
GROUP BY `Tracking_number` 
ORDER BY `Weight` DESC;

/* Find sum of DOB and name  sumof_DOB where Contact is larger than  203030301  and the address is not in 12 Downing street', '14 Downing street', '11 Downing street' and order by customer id descending*/
SELECT SUM(`Date_of_birth`) AS sumof_DOB, `Name_of`, `Customer_address` 
FROM adck853_Customer 
WHERE `Contact` > 203030301 AND `Customer_address` 
NOT IN ('12 Downing street', '14 Downing street', '11 Downing street') 
ORDER BY `Customer_id` DESC;

/* Find average of price and rename average_Price also select produt name and quanitity where product name  ends with an a  or the prodcut name is not nukk or the price divided by 2 is greater than 30 and order by quanitity descending*/

SELECT AVG(`Price`) AS average_Price, `Product_name`,`Quanitity` 
FROM adck853_Products
WHERE `Product_name` LIKE '%a' OR `Product_name` IS NOT NULL OR `Price` / 2 > 30 
ORDER BY `Quanitity` DESC;





/* SECTION 5 MULTIPLE TABLE QUERIES */

/* List the time bought customer name and ETA from the order table where the average of order number is above 3 */

SELECT adck853_Order.Time_bought, adck853_Customer.Name_of, adck853_Parcel.Estimated_arrival 
FROM ((adck853_Order 
INNER JOIN adck853_Customer ON adck853_Order.Customer_id = adck853_Customer.Customer_id) 
INNER JOIN adck853_Parcel ON adck853_Order.Order_number = adck853_Parcel.Order_number)
HAVING AVG(adck853_Order.Order_number) > 3;


/* List price, prodcut name and order number once from prodcuts table when the price is greater than 15 and the employees name is steve jobs */

SELECT DISTINCT adck853_Products.Price, adck853_Products.Product_name, adck853_Products.Order_number 
FROM adck853_Products WHERE adck853_Products.Price > 15 AND Product_id 
IN (SELECT adck853_Employees.Employee_id FROM adck853_Employees where adck853_Employees.Name_of_Employee = 'Steve jobs') 
GROUP BY adck853_Products.Product_name 
ORDER BY adck853_Products.Price ASC;

/* List customer id, customer name as Names, customer address and time bought from the customer table  order by descending customer address*/
SELECT adck853_Customer.Customer_id, adck853_Customer.Name_of AS Names, adck853_Customer.Customer_address, adck853_Order.Time_bought 
FROM adck853_Customer 
LEFT JOIN adck853_Order ON adck853_Customer.`Customer_id` = adck853_Order.`Customer_id` 
WHERE `Date_of_birth` > 20020404
ORDER BY adck853_Customer.Customer_address DESC;


/* List customer id,name of order, product name , hours worked, price  where the customer name contains siddique */
SELECT adck853_Customer.Customer_id, adck853_Order.Name_of, adck853_Products.Product_name, adck853_Suppliers.Hours_worked, adck853_Products.Price 
FROM adck853_Customer 
INNER JOIN adck853_Order ON adck853_Customer.Customer_id = adck853_Order.Customer_id 
INNER JOIN adck853_Products ON adck853_Products.Order_number = adck853_Order.Order_number 
INNER JOIN adck853_Suppliers ON adck853_Suppliers.Product_id = adck853_Products.Product_id 
WHERE adck853_Customer.Name_of LIKE '%Siddique%';



/* Find minimum price, product name , product id and name of employee where the average of salary is above 5000 and order by quantity */
SELECT MIN(adck853_Products.Price), adck853_Products.Product_name, adck853_Employees.Product_id, adck853_Employees.Name_of_Employee 
FROM adck853_Products
RIGHT JOIN adck853_Employees ON adck853_Employees.Product_id = adck853_Products.Product_id 
HAVING AVG(adck853_Employees.Salary) > 5000 
ORDER BY adck853_Products.Quanitity DESC;


/* List department, employee name, role type, salary and contract type where the hours worked are below 40*/
SELECT adck853_Employees.Department, adck853_Employees.Name_of_Employee, adck853_Employees.Role_type, adck853_Employees.Salary,adck853_Employees.Contract_type 
FROM adck853_Employees WHERE adck853_Employees.Product_id 
IN (SELECT adck853_Products.Product_id FROM adck853_Products WHERE adck853_Products.Product_id 
IN (SELECT adck853_Suppliers.Product_id FROM adck853_Suppliers WHERE adck853_Suppliers.Hours_worked <40));





/* SECTION 6 DELETE ROWS (make sure the SQL is commented out in this section) 

DELETE FROM adck853_Employees 
WHERE Department = 'Production' AND Salary / 2 > 2000; 



DELETE FROM adck853_Employees 
WHERE `Salary` BETWEEN 10000 AND 40000 AND  `Name_of_Employee` LIKE 'a_%';
*/




/* SECTION 7 DROP TABLES

DROP TABLE adck853_Parcel;
DROP TABLE adck853_Suppliers;
DROP TABLE adck853_OrderProductRelation;
DROP TABLE adck853_Employees;
DROP TABLE adck853_Order;
DROP TABLE adck853_Customer;
DROP TABLE adck853_Products;
*/


