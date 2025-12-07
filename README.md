# pharmacy-plsql-project
PL/SQL Pharmacy Medicine Stock Management System

1. Introduction
This project proposes a simple PL/SQL–based system used to manage the stock of medicines in a small pharmacy.
The goal is to ensure safe handling of medication quantities, prevent expired drugs from entering the system, and notify the pharmacy when stock becomes too low.
Medication shortages and expired products are common challenges in small pharmacies that operate without computerized systems. This project offers a simple and efficient solution by allowing stock updates, sales processing, and automatic alerts through PL/SQL procedures and triggers.
The system is designed to be minimal but practical, making it suitable for educational purposes while maintaining real-world relevance in the healthcare domain.

2. Project Idea and Objectives

Project Idea

The main idea is to create a minimal database of medicines and automate simple stock management tasks such as adding new stock, selling medicines, and preventing expired drugs from being registered.
Objectives
•	Create a small database table that stores medicine information.
•	Allow safe stock updates using PL/SQL procedures.
•	Prevent expired medicines from being inserted.
•	Detect when stock becomes critically low.
•	Improve the accuracy and reliability of pharmacy inventory management.

4. Database Schema

The system uses a single main table: MEDICINES.

MEDICINES Table

Column	Type	Description
med_id	NUMBER (PK)	Unique medicine ID
name	VARCHAR2	Medicine name
quantity	NUMBER	Quantity in stock
expiry_date	DATE	Expiration date
price	NUMBER	Unit price

This schema is intentionally simple to limit code complexity while still demonstrating PL/SQL features required for the practicum project.

4. PL/SQL Features Implemented

4.1 Procedure: add_stock

Adds additional quantity to an existing medicine.
This ensures the pharmacy can easily update stock after receiving new supplies.
4.2 Procedure: sell_medicine

Simulates selling a medicine:
•	Checks if enough stock is available
•	Deducts the amount sold
•	Returns a clear message
4.3 Trigger: prevent_expired_medicine

A BEFORE INSERT trigger that blocks any attempt to add a medicine whose expiry date is already past.

4.4 Trigger: low_stock_alert (Conflict Detection)

A trigger that activates after each update or sale.
If quantity < 10 → raises a warning message.
This is considered a conflict, because the stock conflicts with minimum safety levels.

6. Innovation

The innovative part of this project is the automatic detection of low stock using a PL/SQL trigger.
This simple but highly useful feature alerts the pharmacy early enough to reorder medicines before they run out, improving pharmaceutical service quality.
Additionally, the system prevents expired medicines from being inserted, enhancing patient safety.
7. Conclusion
This project demonstrates a small but complete PL/SQL application with real healthcare relevance.
It includes table creation, data integrity enforcement, automated triggers, and procedures for managing pharmacy stock.
The simplicity of the design makes it ideal for academic evaluation while still reflecting a real-world operation.
