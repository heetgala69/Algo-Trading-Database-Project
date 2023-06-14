create database Algo_Trading;

use Algo_Trading;

create table if not exists User_Details(
User_ID int primary key,
E_Mail varchar(100) not null,
User_Name varchar(50),
age int,
User_Password varchar(100),
Funds_available float);

desc User_Details;

create table if not exists Portfolio(
Record_ID int primary key,
User_ID int not null,
Auction_ID int not null,
Purchase_Price int,
Quantity int,
foreign key(User_ID) references User_Details(User_ID),
foreign key(Auction_ID) references Auction(Auction_ID));

desc Portfolio;

create table if not exists Trade(
Trade_Date date,
Trade_ID int primary key,
Buyer_ID int,
Seller_ID int,
Auction_ID int,
Price float,
Quantity int,
foreign key(Buyer_ID) references User_Details(User_ID),
foreign key(Seller_ID) references User_Details(User_ID),
foreign key(Auction_ID) references Auction(Auction_ID));

drop table Trade;
show tables;

desc Trade;

create table if not exists Auction(
Auction_ID int primary key,
Auction_Code int,
Stock_Name varchar(50),
Auction_List_Date date);

desc Auction;

create table if not exists Bid(
Bid_ID int primary key,
Auction_ID int not null,
User_ID int not null,
Quantity int not null,
Price float,
Bid_Type varchar(50),
Bid_Status varchar(70),
Submit_Date date,
Expiry_Date date,
foreign key(Auction_ID) references Auction(Auction_ID),
foreign key(User_ID) references User_Details(User_ID));

desc Bid;

Insert into User_Details 
values
(001, "richkid@wayneenterprises.com", "Bruce Wayne", 28, "IAMBATMAN", 30000),
(002, "alienfromkryptonite@earth.com", "Clark Kent", 24, "THEREISHOPE", 2000),
(003, "forensicscientist@ccpd.com", "Barry Allen", 21, "FASTESTMANALIVE", 4250),
(004, "princess@themyscira.com", "Diana Prince", 5000, "WHATWEBELIEVE", 50000),
(005, "vic@starlabs.com", "Victor Stone", 28, "IAMNOTALONE", 6750),
(006, "king@sevenseas.com", "Arthur Curry", 28, "STRONGMANISSTRONGESTALONE", 200),
(007, "journalist@ccc.com", "Iris West", 28, "WEARETHEFLASH", 1500),
(008, "zuckerberg@lexenterprises.com", "Lex Luthor", 28, "GRANDMASPEACHTEA", 300000),
(009, "journalist@dailyplanet.com", "Lois Lane", 28, "WHATDOESTHESSTANDFOR", 9000),
(010, "comedian@gotham.com", "Arthur Fleck", 28, "WHYSOSERIOUS", 10000);

select* from User_Details;

Insert into Portfolio values
(101, 008, 202, 51.80, 200),
(104, 010, 210, 31.20, 80),
(102, 004, 209, 97.30, 10),
(108, 003, 204, 68.90, 50),
(103, 001, 201, 45.20, 400),
(107, 007, 207, 29.70, 30),
(109, 009, 203, 81.20, 100),
(105, 002, 208, 11.20, 100),
(106, 006, 205, 74.50, 2),
(110, 005, 206, 100, 50);

select* from Portfolio;

Insert into Trade values
("2022-09-17", 301, 001, 008, 202, 51.80, 50),
("2022-09-17", 302, 006, 003, 204, 68.90, 35),
("2022-09-17", 303, 007, 009, 203, 81.20, 65),
("2022-09-17", 304, 008, 010, 210, 31.20, 55),
("2022-09-17", 305, 004, 007, 207, 29.70, 10),
("2022-09-17", 306, 003, 006, 205, 74.50, 1),
("2022-09-17", 307, 002, 005, 206, 100, 28),
("2022-09-17", 308, 010, 002, 208, 11.20, 48),
("2022-09-17", 309, 009, 001, 201, 45.20, 200),
("2022-09-17", 310, 005, 004, 209, 97.30, 4);

select* from Trade;

Insert into Bid values
(1001, 201, 001, 200, 45.20, "Intraday", "Pending", "2022-09-17", "2022-09-24"),
(1002, 202, 008, 50, 51.80, "Delivery", "Excuted", "2022-09-17", "2022-09-24"),
(1003, 203, 009, 65, 81.20, "Intraday", "Pending", "2022-09-17", "2022-09-24"),
(1004, 204, 003, 35, 68.90, "Delivery", "Pending", "2022-09-17", "2022-09-24"),
(1005, 205, 006, 1, 74.50, "Intraday", "Cancled", "2022-09-17", "2022-09-24"),
(1006, 206, 005, 28, 100, "Delivery", "Cancled", "2022-09-17", "2022-09-24"),
(1007, 207, 007, 10, 29.70, "Intraday", "Cancled", "2022-09-17", "2022-09-24"),
(1008, 208, 002, 48, 11.20, "Delivery", "Excuted", "2022-09-17", "2022-09-24"),
(1009, 209, 004, 4, 97.30, "Intraday", "Excuted", "2022-09-17", "2022-09-24"),
(1010, 210, 010, 55, 31.20, "Delivery", "Excuted", "2022-09-17", "2022-09-24");

select* from Bid;

Insert into Auction values
(201, 501, "Queen Consolidated", "2022-09-17"),
(202, 511, "HIVE", "2022-09-17"),
(203, 523, "Wayne Enterprises", "2022-09-17"),
(204, 509, "LexCorp", "2022-09-17"),
(205, 549, "Palmer Technologies", "2022-09-17"),
(206, 578, "Ace Chemicals", "2022-09-17"),
(207, 596, "Daily Planet", "2022-09-17"),
(208, 536, "Galaxy Communications", "2022-09-17"),
(209, 515, "Kord Industries", "2022-09-17"),
(210, 552, "Gotham Times", "2022-09-17");

select* from Auction;

select User_ID, User_Name, age, Funds_available 
from User_Details
where Funds_available>7500;

select* from Auction
where Stock_Name like "%es";

select* from Bid
where Quantity>30 and Bid_Status="Excuted";

select* 
from User_Details natural inner join Portfolio
where User_ID>004;

select* from Trade
where Seller_ID in(select User_ID from User_Details where User_Name="Bruce Wayne") or 
Buyer_ID in(select User_ID from User_Details where User_Name="Bruce Wayne"); 

select* from Trade
order by Auction_ID;

select Auction_ID, round(Quantity*Price) as Total_Cost
from Bid
order by Auction_ID;

select a.Stock_Name, b.Quantity, b.Price, b.Bid_Status, b.Bid_Type
from Bid as b, Auction as a
where b.Auction_ID=a.Auction_ID;

select* from User_Details;

alter table Auction
modify column Auction_List_Date datetime;

select* from Auction;

Insert into Bid values
(1011, 210, 001, 200, 45.20, "Intraday", "Excuted", "2022-09-18", "2022-09-24");

select* from Bid;

delete from Bid
where Submit_Date="2022-09-18";

update Bid
set Quantity=25
where Auction_ID=206;

select User_Name, round(Quantity*Purchase_Price) as Total_Cost
from User_Details natural inner join Portfolio
where Quantity*Purchase_Price>5000;

