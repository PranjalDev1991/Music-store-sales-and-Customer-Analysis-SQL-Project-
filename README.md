# Music-store-sales-and-Customer-Analysis-SQL-Project-
“Leveraging SQL to transform music store data into insights that support smarter business decisions.”

Project Description

This project focuses on analyzing a digital music store database to extract meaningful business insights using SQL. The analysis helps understand customer behavior, sales performance, popular genres, and top artists, enabling data-driven decision-making.
This project is designed as a portfolio project for a Data Analyst role, showcasing hands-on SQL skills and the ability to translate raw data into actionable insights.


 Overview
 
This project is a comprehensive SQL-based analysis of a music store database. It includes data exploration and business intelligence queries to extract insights from music sales, customer behavior, and artist performance.

Project Structure

```
music store analysis/
├── README.md
├── music_database.sql
├── SQL_Music_Store_Analysis_small_project_1.sql
└── dataset/
    ├── album.csv
    ├── artist.csv
    ├── customer.csv
    ├── employee.csv
    ├── genre.csv
    ├── invoice.csv
    ├── invoice_line.csv
    ├── media_type.csv
    ├── playlist.csv
    └── playlist_track.csv
```

## Dataset Description

The project contains 10 CSV files that form a complete music store database:

- artist.csv - Information about music artists
- album.csv - Album details linked to artists
- track.csv- Individual tracks with genre and album information
- genre.csv - Music genres
- customer.csv - Customer details and locations
- invoice.csv - Sales invoices with billing information
- invoice_line.csv - Line items for each invoice with pricing
- employee.csv - Store employee information and hierarchy
- playlist.csv - Playlist collections
- playlist_track.csv- Mapping of tracks to playlists
- media_type.csv - Supported media formats

Analysis Queries

The project includes the following SQL analysis questions:

1. Senior Employee Identification
   - Identifies the most senior employee based on job title levels

2. International Sales Analysis
   - Determines which countries have the most invoices

3. Top Invoice Values
   - Retrieves the top 3 highest-value invoices

4. Best Performing City
   - Identifies the city with the highest total sales revenue
   - Useful for targeted promotional events

5. Best Customer Identification
   - Finds the customer who has spent the most money overall

6. Rock Music Listener Analysis
   - Returns all rock music listeners with their email addresses
   - Results ordered alphabetically by email

7. Top Rock Bands
   - Identifies the top 10 rock artists by number of songs
   - Useful for artist promotion and collaboration opportunities

8. Above-Average Track Length Analysis
   - Finds all tracks longer than the average song length
   - Sorted from longest to shortest

9. Customer Spending by Artist**
   - Analyzes how much each customer has spent on the best-selling artist
   - Provides insights into customer-artist relationships

Files Included

SQL_Music_Store_Analysis_small_project_1.sql** - Contains all SQL analysis queries with detailed comments
music_database.sql** - Database schema and table definitions
dataset/  - CSV files for data import

## How to Use

1. Import the `music_database.sql` file to create the database schema
2. Load the CSV files from the `dataset/` folder into their respective tables
3. Run the queries from `SQL_Music_Store_Analysis_small_project_1.sql` to generate insights

## Key Business Insights

This analysis helps answer critical business questions:
- Customer segmentation and lifetime value analysis
- Geographic market performance
- Genre and artist popularity trends
- Revenue generation by location
- Employee hierarchy and seniority structure
- Music preference patterns by customer

## Database Schema

The following diagram illustrates the relationships between all tables in the music store database:

<img width="710" height="574" alt="MusicDatabaseSchema" src="https://github.com/user-attachments/assets/9f80b048-6947-43b5-8f6b-842e349cd37f" />
<img width="710" height="574" alt="MusicDatabaseSchema" src="https://github.com/user-attachments/assets/9f80b048-6947-43b5-8f6b-842e349cd37f" />

The schema follows a relational model with:
- **Core Entities**: Artist, Album, Track, Genre, Customer, Invoice, Employee, Playlist, MediaType
- **Junction Tables**: PlaylistTrack (for many-to-many relationships), InvoiceLine (for detailed invoice items)
- **Relationships**: Properly normalized with primary and foreign keys for data integrity

## Technologies Used

- PostgreSQL - Data querying and analysis
- CSV - Data format for tables
- Database - Relational database management


## Conclusion

This Music Store Analysis project provides a robust framework for understanding music retail operations through data-driven insights. By leveraging SQL queries across a comprehensive dataset, the project enables:

- **Strategic Decision Making** - Identify top-performing artists, customers, and markets
- **Targeted Marketing** - Focus promotional efforts on high-revenue cities and customer segments
- **Revenue Optimization** - Understand customer spending patterns and preferences
- **Operational Insights** - Analyze employee structure and organizational hierarchy
- **Genre Trends** - Monitor music genre popularity and listener preferences

The modular design of SQL queries makes it easy to adapt these analyses for different time periods, regions, or customer segments. Whether you're managing a music store, planning marketing campaigns, or conducting market research, this project provides the analytical foundation for data-driven decision-making in the music retail industry.
