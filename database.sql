CREATE DATABASE inseDB;
-- Main Table
CREATE TABLE Shop(
shopID smallint,
shop_Name varchar(100),
shop_Barbers smallint,
shop_Customers smallint,
shop_WaitTime smallint,
PRIMARY KEY ShopID
);
CREATE TABLE Cuts(
ShopID smallint,
cuts_Standard decimal(4, 2),
cuts_Student 

)
