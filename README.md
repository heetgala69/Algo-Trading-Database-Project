# 📈 Algo-Trading Database Project
This project is a database management system designed to simulate algorithmic trading between users represented by DC Universe characters. Built using Oracle SQL, it handles stock auctions, bidding, portfolio management, and trades with proper normalization and entity relationships.

# 🗂️ Project Overview
The Algo Trading database consists of five core tables:
- User_Details – Stores personal and financial data of users
- Auction – Information on stock listings and auction codes
- Bid – User-submitted bids for stock purchases
- Trade – Records of executed trades between users
- Portfolio – Tracks owned stock assets per user
Each table was carefully modeled with primary and foreign keys to ensure data integrity and consistency.

# 🔄 Database Design Components
- Entity-Relationship Diagram (ERD): Illustrates relationships, attributes, and cardinality among tables
- Relational Model: Defines schemas for all tables with clear relationships
- Normalization: Database follows First Normal Form (1NF) to reduce redundancy

# 🧠 Key Highlights & Learnings
This project involved developing a fully functional Algo-Trading database system using Oracle SQL. It features SQL scripts for creating, inserting, updating, and querying tables, along with sample data inspired by iconic DC Universe characters like Bruce Wayne and Clark Kent. The database supports complex operations such as trade tracking, bid status filtering, joins, aggregations, and cost calculations. Through this project, we gained practical experience in designing normalized databases, writing optimized SQL queries, managing foreign key relationships, and handling multi-table interactions effectively. One of the main challenges we encountered was accurately defining relationships and maintaining referential integrity across interconnected tables while abstracting real-world auction and trading logic into a clean, scalable schema.
