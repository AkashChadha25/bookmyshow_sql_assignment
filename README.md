
# BookMyShow Theatre Show Listing System

## Overview
This project demonstrates a normalized database schema for a movie ticketing platform similar to BookMyShow, where a user can browse theatre shows by date.

## Schema Description

### Tables

- **Theatre**: Stores theatre details.
- **Screen**: Each theatre can have multiple screens.
- **Movie**: Holds information about movies.
- **Show**: Represents a scheduled movie screening.

### Normalization
All tables follow 1NF, 2NF, 3NF, and BCNF. There is no partial, transitive or non-trivial dependency.

## Files

- `schema.sql`: Contains SQL statements to create tables and insert sample data.
- `queries.sql`: Contains a sample query to fetch all shows for a given date and theatre.

## Sample Query

The query fetches all movie shows at **PVR: Nexus** on **2023-04-25**.

## How to Run

```bash
mysql -u <username> -p < database_name < schema.sql
mysql -u <username> -p < database_name < queries.sql
```
