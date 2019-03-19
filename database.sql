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
     UserID smallint not null auto_increment, 
     USER_NAME VARCHAR (18) ,
     FIRST_NAME VARCHAR (30)NOT NULL,
     LAST_NAME VARCHAR(30)NOT NULL,
     EMAIL_ADDRESS VARCHAR (30) NOT NULL,
     PASSWORD VARCHAR(18) NOT NULL,
     REG_DATE TIMESTAMP,
     primary Key(UserID)
     );

-- Dummy Shop Values
insert into Shop VALUES (NULL, "Crazy Cuts", 50.786600, -1.072379, 0, 0, '00:13:00');
insert into Shop VALUES (NULL, "Golden Hairdressing", 50.793546, -1.076251, 0, 0, '00:10:00');
insert into Shop VALUES (NULL, "Portsmouth Dressing Co", 50.790621, -1.082350, 0, 0, '00:12:00');
insert into Shop VALUES (NULL, "Scissors and Co", 50.784494, -1.077417, 0, 0, '00:11:00');
insert into Shop VALUES (NULL, "Southsea Cuts", 50.782527, -1.087824, 0, 0, '00:09:00');
insert into Shop VALUES (NULL, "Clean Shave Shop", 50.786894, -1.079205, 0, 0, '00:10:00');
insert into Shop VALUES (NULL, "Just Cutting", 50.786268, -1.069937, 0, 0, '00:11:00');
insert into Shop VALUES (NULL, "Cheapo Cuts", 50.783789, -1.070452, 0, 0, '00:12:30');
insert into Shop VALUES (NULL, "Hairdressing at 203", 50.788279, -1.055453, 0, 0, '00:10:00');
insert into Shop VALUES (NULL, "H.S.A.C", 50.781633, -1.072783, 0, 0, '00:07:00');

-- Dummy Opening Times
insert into ShopTimes VALUES (1, "08:30:00", "17:00:00", "08:30:00", "17:00:00", "08:30:00", "18:00:00", "08:30:00", "17:00:00", "09:00:00", "19:00:00", "10:00:00", "17:00:00", "09:30:00", "16:00:00");
insert into ShopTimes VALUES (2, "09:00:00", "17:00:00", "09:00:00", "17:00:00", "09:00:00", "18:00:00", "09:00:00", "17:00:00", "09:00:00", "19:00:00", "09:00:00", "17:00:00", "09:00:00", "16:00:00");
insert into ShopTimes VALUES (3, "08:00:00", "19:00:00", "08:00:00", "18:00:00", "08:00:00", "18:00:00", "08:00:00", "18:00:00", "08:00:00", "18:00:00", "08:00:00", "18:00:00", "08:00:00", "17:00:00");
insert into ShopTimes VALUES (4, "08:30:00", "17:00:00", "09:00:00", "17:00:00", "08:30:00", "18:00:00", "08:30:00", "17:00:00", "09:00:00", "19:00:00", "10:00:00", "17:00:00", "09:30:00", "16:00:00");
insert into ShopTimes VALUES (5, "09:00:00", "17:00:00", "09:00:00", "17:00:00", "09:00:00", "18:00:00", "09:00:00", "17:00:00", "09:00:00", "19:00:00", "09:00:00", "17:00:00", "09:00:00", "16:00:00");
insert into ShopTimes VALUES (6, "08:00:00", "19:00:00", "08:00:00", "18:00:00", "09:00:00", "18:00:00", "08:00:00", "18:00:00", "09:00:00", "18:00:00", "08:00:00", "18:00:00", "08:00:00", "17:00:00");
insert into ShopTimes VALUES (7, "08:30:00", "17:00:00", "09:00:00", "17:00:00", "08:30:00", "18:00:00", "08:30:00", "17:00:00", "09:00:00", "19:00:00", "10:00:00", "17:00:00", "09:30:00", "16:00:00");
insert into ShopTimes VALUES (8, "09:00:00", "17:00:00", "09:00:00", "17:00:00", "09:00:00", "18:00:00", "09:00:00", "17:00:00", "09:00:00", "19:00:00", "09:00:00", "17:00:00", "09:00:00", "16:00:00");
insert into ShopTimes VALUES (9, "08:00:00", "19:00:00", "08:00:00", "18:00:00", "09:00:00", "18:00:00", "08:00:00", "18:00:00", "09:00:00", "18:00:00", "08:00:00", "18:00:00", "08:00:00", "17:00:00");
insert into ShopTimes VALUES (10, "08:00:00", "19:00:00", "08:00:00", "18:00:00", "09:00:00", "18:00:00", "08:00:00", "18:00:00", "09:00:00", "18:00:00", "08:00:00", "18:00:00", "08:00:00", "17:00:00");

--DUMMY USER DATA
INSERT INTO USERS VALUES(NULL,'cutmyhair' , 'David' , 'Johnson' ,' DavidJ@gmail.com', 'david123', '2019-01-02');
INSERT INTO USERS VALUES(NULL,'Iambold' , 'Shawn' , 'Bold' ,' boldhead@gmail.com', 'boldielocks', '2019-04-03 01:43:08 ' );
INSERT INTO USERS VALUES(NULL,'Shaveme123' , 'Carl' , 'Antonio' ,' Bestfirst432@gmail.com', 'powerpuffgirls', '2019-02-01 11:23:12 ' );
INSERT INTO USERS VALUES(NULL,'Behindyou' , 'Feriss' , 'Athreat' ,' runaway@gmail.com', 'itstolate999', '2019-06-03 12:22:14 ' );
INSERT INTO USERS VALUES(NULL,'portsmasugang' , 'Kofi' , 'kingston' ,' JohnCena@gmail.com', 'tripplehhh', '2019-02-01 23:42:16 ' );

--Appointment table--
CREATE TABLE Appointments(
     AppointmentID smallint not null auto_increment, 
     Date_Created TIMESTAMP , 
     Appointment_Date TIMESTAMP, 
     primary key(AppointmentID)
     );


