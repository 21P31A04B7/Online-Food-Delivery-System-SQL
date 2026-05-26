CREATE DATABASE Online_Food_Delivery_Database_system;
USE Online_Food_Delivery_Database_system;
CREATE TABLE Customers(
Customer_id INT PRIMARY KEY,
Customer_name VARCHAR(50) NOT NULL,
city VARCHAR(50),
Phone_number BIGINT UNIQUE);

CREATE TABLE Restaurants(
restaurant_id INT PRIMARY KEY,
restaurant_name VARCHAR(50) NOT NULL,
location VARCHAR(50),
rating DECIMAL(2,1));

CREATE TABLE Menu(
 menu_id INT PRIMARY KEY,
 restaurant_id INT,
 food_item VARCHAR(50),
 price INT,
 category VARCHAR(50),
 FOREIGN KEY (restaurant_id) 
 REFERENCES
Restaurants(restaurant_id)
);

CREATE TABLE Orders(order_id INT PRIMARY KEY, customer_id INT,restaurant_id INT,order_date DATE,total_amount INT, order_status VARCHAR(30), FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),FOREIGN KEY(restaurant_id) REFERENCES Restaurants(restaurant_id));
CREATE TABLE Delivery (delivery_id INT Primary KEY, order_id INT, delivery_partner VARCHAR(50),delivery_status VARCHAR(30), delivery_time INT,FOREIGN KEY (order_id) REFERENCES Orders(order_id));
