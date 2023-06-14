# Algo-Trading-Database-Project
# Algo Trading Database Project

This repository contains the code and documentation for the Algo Trading Database project. The project focuses on creating a database to manage stock auctions, bids, purchases, and sales between users of DC Universe characters.

## Table of Contents

1. [Storyline](#storyline)
2. [Components of Database Design](#components-of-database-design)
3. [Entity Relationship Diagram](#entity-relationship-diagram)
4. [Relational Model](#relational-model)
5. [Normalization](#normalization)
7. [Learning from the Project](#learning-from-the-project)
8. [Challenges Faced](#challenges-faced)
9. [Conclusion](#conclusion)

## Storyline

The database contains information on stock auctions, bids, purchases, and sales between users of DC Universe characters. The database "Algo Trading" contains 5 tables:
- User Details
- Auction
- Bid
- Trade
- Portfolio

## Components of Database Design

This section describes all the relationships among various entities and specifies the cardinality and participation for each relationship.

## Entity Relationship Diagram

The entity relationship diagram (ER Diagram) illustrates the entities, attributes, and relationships within the database.

## Relational Model

The relational model defines the tables and their attributes in the database. Here are the main tables in the Algo Trading database:

- User_Details (User_ID, User_Name, Age, E-mail, Password, Funds_available)
- Auction (Auction_ID, Auction_Code, Stock_Name, Auction_List_Date)
- Bid (Bid_ID, User_ID, Auction_ID, Price, Quantity, Bid_Type, Bid_Status, Submit_Date, Ex-piry_Date)
- Portfolio (Record_ID, User_ID, Auction_ID, Purchase_Price, Quantity)
- Trade (Trade_ID, Buyer_ID, Seller_ID, Auction_ID, Price, Quantity, Trade_Date)

## Normalization

The database has been designed to follow the First Normal Form (1NF) to ensure data integrity and eliminate data redundancy.
Learning from the Project
During the project, we learned more about database management systems, database design, and SQL queries. We gained hands-on experience in creating tables, inserting data, and executing queries using ORACLE (SQL).

## Challenges Faced
One of the challenges we encountered was determining the relationships and keys between the tables and ensuring data consistency throughout the database. Additionally, designing the database schema and constructing complex queries required careful consideration and problem-solving.

## Conclusion
This project provided valuable insights into database management systems and their applications. We learned about database design, SQL queries, and the importance of handling data responsibly. The Algo Trading database demonstrates effective methods of data storage and interaction using ORACLE.

For more details, refer to the project's documentation and the code provided in this repository.
