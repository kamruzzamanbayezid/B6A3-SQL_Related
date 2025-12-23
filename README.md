# Vehicle Rental System - Database Design

## Overview
This is a simple database project for a vehicle rental system. It helps to manage users (Admins/Customers), vehicles (cars/bikes/truck), and bookings. 

## Features 
The database consists of three main tables:
- **Users**: Stores admin and customer details with unique email constraints.
- **Vehicles**: Manages inventory, registration numbers, and availability.
- **Bookings**: Connects users and vehicles, tracking dates and total costs.

## Business Logic & Relationships
- **One to Many (User → Bookings):** One user can make many bookings.
- **Many to One (Bookings → Vehicle):** One vehicle can be booked many times.
- **Logical 1:1:** Every single booking record belongs to only one user and one vehicle.

## SQL Query Explanations
The `queries.sql` file contains:
1. **JOINS**: Retrieve booking information along with customer name and vehicle name.
2. **NOT EXISTS**: Find all vehicles that have never been booked.
3. **WHERE**: To filter vehicles and bookings based on specific status or types.
