drop database inseDB;
create database inseDB;
use inseDB;

-- Main Table
create table Shop(
shopID smallint not null auto_increment,
shop_Name varchar(100),
shop_Latitude decimal(8, 6),
shop_Longitude decimal(8, 6),
shop_Barbers smallint,
shop_Customers smallint,
shop_WaitTime time,
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
create table ShopTimes(
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
create table Login(
shopID smallint not null auto_increment,
shopPass varchar(10),
foreign key (shopID) references Shop(shopID)
);

--User database
CREATE TABLE USERS
( 
USER_NAME VARCHAR (12) PRIMARY KEY,
FIRST_NAME VARCHAR (30)	NOT NULL,
LAST_NAME VARCHAR(30)	NOT NULL,
EMAIL_ADDRESS VARCHAR (30) NOT NULL,
PASSWORD VARCHAR(12) NOT NULL,
REG_DATE TIMESTAMP
);

insert into Shop VALUES (NULL, "Crazy Cuts", 50.786600, -1.072379, 0, 0, '00:13:00');
insert into Shop VALUES (NULL, "Golden Hairdressing", 50.793546, -1.076251, 0, 0, '00:10:00');
insert into Shop VALUES (NULL, "Portsmouth Dressing Co", 50.790621, -1.082350, 0, 0, '00:12:00');
insert into Shop VALUES (NULL, "Scissors and Co", 50.784494, -1.077417, 0, 0, '00:11:00');
insert into Shop VALUES (NULL, "Southsea Cuts", 50.782527, -1.087824, 0, 0, '00:09:00');
insert into Shop VALUES (NULL, "Clean Shave Shop", 50.786894, -1.079205, 0, 0, '00:10:00');
insert into Shop VALUES (NULL, "Just Cutting", 50.786268, -1.069937, 0, 0, '00:11:00');
insert into Shop VALUES (NULL, "Cheapo Cuts", 50.783789, -1.070452, 0, 0, '00:12:30');