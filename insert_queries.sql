INSERT INTO Customers VALUES
(1,'Rahul' ,'Hyderabad', 9876543210),
(2,'Priya' ,'Bangalore', 9876543211),
(3,'Kiran' ,'Chennai', 9876543212),
(4,'Sneha' ,'Mumbai', 9876543213),
(5,'Arjun' ,'Delhi', 9876543214);

INSERT INTO Restaurants VALUES
(101,'Spicy Hub' ,'Hyderabad', 4.5),
(102,'Food Palace' ,'Bangalore', 4.2),
(103,'Taste Point' ,'Chennai',4.7),
(104,'BBQ Nation' ,'Mumbai', 4.4),
(105,'Pizza Corner' ,'Delhi', 4.1);

INSERT INTO Menu VALUES
(1001,101,'Biryani',250,'Main Course'),
(1002,101,'Chicken Fry',180,'Starter'),
(1003,102,'Pizza',300,'Fast Food'),
(1004,103,'Dosa',120,'Breakfast'),
(1005,104,'Burger',150,'Fast Food'),
(1006,105,'Pasta',220,'Italian');

INSERT INTO Orders VALUES
(201,1,101,'2025-05-20',430,'Delivered'),
(202,2,102,'2025-05-21',120,'Delivered'),
(203,3,103,'2025-05-22',300,'Cancelled'),
(204,4,104,'2025-05-22',150,'Delivered'),
(205,5,105,'2025-05-23',220,'Pending');

INSERT INTO Delivery VALUES
(301,201,'Ravi','Delivered',35),
(302,202,'Kumar','Delivered',25),
(303,203,'Ajay','Cancelled',0),
(304,204,'Vikram','Delivered',30),
(305,205,'Suresh','Out for Delivery',20);
