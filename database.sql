create database inseDB;

-- Main Table
create table Shop(
shopID smallint not null auto_increment,
shop_Name varchar(100),
shop_Barbers smallint,
shop_Customers smallint,
shop_WaitTime smallint,
primary key (ShopID)
);

-- Cuts price table
create table Cuts(
shopID smallint not null auto_increment,
cuts_Standard decimal(4, 2),
cuts_Student decimal(4, 2),
cuts_OAP decimal(4, 2),
cuts_CutShave decimal(4, 2),
cuts_CutStyle decimal(4, 2),
foreign key (shopID) references Shop(shopID)
);

-- Shop times table
create table shopTimes(
shopID smallint not null auto_increment,
mondayOpen time,
mondayClose time,
tuesdayOpen time,
tuesdayClose time,
wednesdayOpen time,
wednesdayClose time,
thursdayOpen time,
thursdayClose time,
fridayOpen time,
fridayClose time,
saturdayOpen time,
saturdayClose time,
sundayOpen time,
sundayClose time,
foreign key (shopID) references Shop(shopID)
);

-- Shop login details
create table login(
shopID smallint not null auto_increment,
shopPass varchar(10)
);