
use candy;
CREATE TABLE customer (
   Cus_ID  int NOT NULL,
   Cus_Name varchar(25) NOT NULL,
   Gender  varchar(25) NOT NULL,
   Cus_PhoneNo  int NOT NULL,
   DoB  date NOT NULL,
   Pass_word  varchar(45) NOT NULL,
  PRIMARY KEY ( Cus_ID )
);
CREATE TABLE  dilevery (
   Del_ID  int NOT NULL ,
   date_del DATE  NOT NULL,
  PRIMARY KEY ( Del_ID )
) ;
CREATE TABLE Admin (
   name varchar(25) NOT NULL,
   Age int NOT NULL,
   Pass varchar(45) NOT NULL,
   Gender varchar(25) NOT NULL,
   Adm_PhoneNO int NOT NULL,
   Adm_ID INT NOT NULL,
   PRIMARY KEY ( Adm_ID)
);


CREATE TABLE employee (
  EMPLOYEE_ID int NOT NULL,
  Fname varchar(45) DEFAULT NULL,
  Mname varchar(45) DEFAULT NULL,
  Lname varchar(45) DEFAULT NULL,
  Age int DEFAULT NULL,
  Pass varchar(45) DEFAULT NULL,
  Adm_ID int DEFAULT NULL,
  Gender varchar(45) DEFAULT NULL,
  Emp_PhoneNo int DEFAULT NULL,
  Salary double DEFAULT NULL,
  PRIMARY KEY (EMPLOYEE_ID),
  FOREIGN KEY (Adm_ID) REFERENCES Admin (Adm_ID)
);
CREATE TABLE product (
  Item_name varchar(45) NOT NULL,
  Type varchar(45) NOT NULL,
  Price double NOT NULL,
  Quantity int NOT NULL,
  Item_ID int NOT NULL,
  PRIMARY KEY (Item_ID)
);

CREATE TABLE orders (
   OrderNo int NOT NULL,
   Cus_ID  int NOT NULL,
   sales  double DEFAULT NULL,
   Taxes  double NOT NULL,
   Total_price int NOT NULL,
   Final_bill  double NOT NULL,
   Del_ID  int DEFAULT NULL,
   PRIMARY KEY ( OrderNo ),
   FOREIGN KEY (Del_ID ) REFERENCES dilevery (Del_ID)  ,
   FOREIGN KEY (Cus_ID ) REFERENCES customer (Cus_ID)
  
) ;

CREATE TABLE  make (
   Emp_ID  int NOT NULL,
   item_ID  int NOT NULL,
   primary KEY( Emp_ID,item_ID),
   FOREIGN KEY (Emp_ID ) REFERENCES Employee (EMPLOYEE_ID),
   FOREIGN KEY (item_ID ) REFERENCES product (Item_ID)
) ;

CREATE TABLE  view_order (
   EMP_ID  int NOT NULL,
   Order_no  int NOT NULL,
   primary KEY( EMP_ID,Order_no),
   FOREIGN KEY (EMP_ID ) REFERENCES Employee (EMPLOYEE_ID),
   FOREIGN KEY (Order_no ) REFERENCES orders (OrderNo)
) ;

CREATE TABLE consist_of (
  Item_ID int NOT NULL,
  Order_No int NOT NULL,
  primary KEY( Item_ID,Order_No), 
 FOREIGN KEY (Item_ID) REFERENCES product ( Item_ID),
 FOREIGN KEY (Order_No) REFERENCES orders (OrderNo)  

);

CREATE TABLE manage (
  Item_ID int NOT NULL,
  Adm_ID int NOT NULL,
  primary KEY( Item_ID,Adm_ID), 
  FOREIGN KEY ( Item_ID) REFERENCES product (Item_ID),
  FOREIGN KEY (Adm_ID) REFERENCES Admin ( Adm_ID)
);


INSERT INTO customer (Cus_ID ,Cus_Name  , Gender  , Cus_PhoneNo  ,  DoB , Pass_word  )
VALUES 
   
   (111001  , 'youssf khalid' , 'Male'  , 574729736 ,    '1980-09-21' , 'youssf@666'  ), 
   (111002  , 'Fhad Omar', 'Male'  , 568768007 ,    '1977-01-26' , 'fhad@232'  ), 
   (111003  , 'Nora Abdallah' , 'Female'  , 568233382 ,   '1998-04-18' , 'nora@454' ),
   (111004   , 'Ahmed Rashed' , 'Male'  , 578233381 ,   '2002-03-07' , 'Ahme@123'  ),
   (111005   , 'Nada mosa ' , 'Female'  , 578233384 ,  '1994-08-08' , 'nada@323'  ),
   (111006   , 'Sara Hassan' , 'Female'  ,   500869363 ,   '2002-05-30' , 'sara@222'  ),
   (111007   , 'Wateen Abdullah' , 'Female'  ,   555312121 ,   '2002-10-30' , 'Wateen@1234'),
   (111008   , 'Mayan Abdulrahman' , 'Female'  ,   507695037 ,   '2002-4-13' , 'Mayan@1234');
   
   INSERT INTO dilevery ( Del_ID,date_del )
VALUES
   (10,'2023-02-09'),
   (11,'2023-02-09'),
   (12,'2023-02-09'),
   (13,'2023-02-09'),
   (14,'2023-02-09'),
   (15,'2023-02-09');
   
   INSERT INTO Admin  (name, Age, Pass, Gender, Adm_PhoneNO, Adm_ID)
VALUES 
   ('Shaima',22,'Shai@645','Female',544134823,220001 ),
   ('Fahad',34,'Faha@745','Male',594663826,220002 ),
   ('Layan',25,'Laya@554','Female',577253448,220003 );

    INSERT INTO employee (EMPLOYEE_ID, Fname, Mname, Lname, Age, Pass, Adm_ID, Gender, Emp_PhoneNo, Salary )
VALUES
 (121001, 'Sara', 'Ali', 'Alfaleh', 35, 'Sar@1236', 220001, 'Female', 0556764298, 6000),
( 121002 , 'Mohamed', 'Ahmed', 'Alsamhan', 26, 'Moh@5346', 220002, 'Male', 0567688765, 4000),
(121003 , 'Leen', 'Fahad', 'Alshareef', 37, 'Lee@3334', 220003, 'Female', 0567778863, 6000),
(121004, 'Khaled', 'Mshal', 'Alshoman', 21, 'Kha@6757', 220003, 'Male', 0504848141, 3000),
(121005, 'Amal', 'Hazem', 'Alkhodariy', 34, 'Ama@5449', 220001, 'Female', 0503943449, 5500),
(121006, 'Hamed', 'Sami', 'Alshobali', 23, 'Ham@6778', 220002, 'Male', 0504458899, 5000),
(121007, 'Ali', 'Waleed', 'Alfawas', 26, 'Ali@9867', 220001, 'Male', 0557896433, 2500),
(121008, 'Hajer', 'Bader', 'Alahmad', 30, 'Haj@4356', 220002, 'Female', 0554443321, 3000),
(121009, 'Omar', 'Mohamed', 'Alhammad', 34, 'Oma@4543', 220003, 'Male', 0567345567, 6000);
INSERT INTO product (Item_name, Type, Price, Quantity, Item_ID)
VALUES
('Hersheys Chocolate', 'Chocolate', 2.5, 20, 230001),
('Panda Chocolate Cookies', 'Chocolate', 2, 20, 230002),
('Boyer Mallo Cup', 'Chocolate', 1.5, 20, 230003),
('Payday Bar', 'Chocolate', 2, 20, 230004),
('Reeds Candy Rolls', 'Chocolate', 1.5, 20, 230005),
('Kinder', 'Chocolate', 3.5, 20, 230006),
('M&Ms', 'Chocolate', 3.5, 20, 230007),
('Almond IceCream', 'Icecream', 2.5, 20, 230008),
('Cotton Candy Icecream', 'Icecream', 18.99, 20, 230009),
('Multi Flavors IceCream', 'Icecream', 10.5, 20, 230010),
('Peanut Butter Icecream', 'Icecream', 18.99, 20, 230011),
('Raspberry Icecream', 'Icecream', 9, 20, 230012),
('Sandwitch Icecream', 'Icecream', 2, 20, 230013),
('Razzles Candy', 'Icecream', 14.99, 20, 230014),
('Ring Pop', 'Candy', 1, 20, 230015),
('StarBurst Gum', 'Candy', 4.5, 20, 230016),
('Gummi Pizza candy', 'Candy', 1.5, 20, 230017),
('Dubble Bubble Gum', 'Candy', 2.99, 20, 230018),
('Gummi Hot Dog Candy', 'Candy', 1.5, 20, 230019),
('Hubba Candy', 'Candy', 2.75, 20, 230020),
('Nerds Big Chewy', 'Candy', 4.5, 20, 230021);

INSERT INTO orders (OrderNo, Cus_ID, sales, Taxes, Total_price, Final_bill, Del_ID)
VALUES
(100, 111001,20.0,2.0,49,41.2,10),
(101, 111003,0.0,1.0,23,24.0,11),
(102, 111005,20.0,15.0,220,188.304,12),
(103, 111005,0.0,1.0,23,24.48,NULL),
(104, 111004,0.0,0.5,18,19.24,NULL),
(105, 111002,20.0,4.0,88,74.168,13),
(106, 111007,20.0,8.0,119,102.168,14),
(107, 111008,0.0,2.0,54,56.0,NULL),
(108, 111002,20.0,10.0,171,145.536,15); 

INSERT INTO make (EMP_ID,item_ID )
VALUES
   (121001,230001),
   (121003,230002),
   (121004,230003),
   (121005,230004),
   (121006,230005),
   (121007,230006),
   (121008,230007),
   (121009,230008),
   (121002,230009),
   (121001,230010),
   (121002,230011),
   (121003,230012),
   (121004,230013),
   (121005,230014),
   (121006,230015),
   (121007,230016),
   (121008,230017),
   (121009,230018),
   (121001,230019),
   (121005,230020),
   (121008,230021);
   
   INSERT INTO view_order (Emp_ID,Order_no )
VALUES
   (121001,100),
   (121002,101),
   (121003,102),
   (121004,103),
   (121005,104),
   (121006,105),
   (121007,106),
   (121008,107),
   (121009,108);
 

   
  
INSERT INTO consist_of (Item_ID, Order_No)
VALUES 
   (230001, 100),
   (230002, 100),
   (230003, 101),
   (230004, 102),
   (230005, 103),
   (230006, 104),
   (230007, 105),
   (230008, 105),
   (230009, 106),
   (230010, 107),
   (230011, 108),
   (230012, 105),
   (230013, 106),
   (230014, 107),
   (230015, 102),
   (230016, 103),
   (230017, 104),
   (230018, 108),
   (230019, 101),
   (230020, 100),
   (230021, 106);


INSERT INTO manage (Item_ID, Adm_ID)
VALUES
(230001, 220001),
(230002, 220002),
(230003, 220001),
(230004, 220001),
(230005, 220003),
(230006, 220002),
(230007, 220001),
(230008, 220001),
(230009, 220003),
(230010, 220003),
(230011, 220001),
(230012, 220001),
(230013, 220003),
(230014, 220003),
(230015, 220001),
(230016, 220003),
(230017, 220002),
(230018, 220001),
(230019, 220002),
(230020, 220003),
(230021, 220001);

SELECT * FROM customer ;
SELECT * FROM dilevery  ;
SELECT * FROM  Admin  ;
SELECT * FROM  employee  ;
SELECT * FROM  product  ;
SELECT * FROM  orders  ;
SELECT * FROM manage;
SELECT * FROM make;
SELECT * FROM consist_of;
SELECT * FROM view_order;