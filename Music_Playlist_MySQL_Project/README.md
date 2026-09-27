# Music Store SQL Analysis

An SQL project for exploring a digital music store dataset. It includes customer, invoice, artist, album, track, genre, and playlist data, along with analysis queries for sales and listening trends.

## Requirements

- MySQL 8.0 or later
- MySQL Workbench (recommended for importing the CSV files)

## Set up the database

Choose **one** of the following methods.

### Option 1: Run the complete MySQL script

Open `Music_Store_database_mysql.sql` in MySQL Workbench and execute it. It creates the `music_database` schema, creates the tables, and loads the data.

**This script drops and recreates tables with the same names in `music_database`.** Use this method for a fresh setup or when you want to reload all project data.

### Option 2: Create tables and import CSVs

1. Execute `Music_Store_schema_mysql.sql` to create the empty tables.
2. In Workbench, expand `music_database`, right-click **Tables**, and choose **Table Data Import Wizard**.
3. Select the matching CSV in `mysql_import` and import it into the existing table with the same name. For example, `mysql_import/album.csv` goes into `album`.
4. Repeat for all 11 CSV files.

The `mysql_import` copies use plain ASCII text to avoid CSV encoding errors in Workbench. Their IDs and relationships are preserved. Employee date values are formatted for MySQL. The original CSV files are also included in the project folder.

If the `album` import fails, execute `Reload_album_only_mysql.sql` to reload that table without changing the others.

## Run the analysis

After loading the data, open and execute `Music_Store_Queries_mysql.sql`. It contains queries for:

- Invoice counts and revenue by country and city
- Top customers and Rock music listeners
- Popular Rock artists and longer-than-average tracks
- Best-selling artists and popular genres by country
- Highest-spending customers by country

## Main files

| File | Purpose |
|---|---|
| `Music_Store_database_mysql.sql` | Complete MySQL setup and data load |
| `Music_Store_schema_mysql.sql` | Create the schema and empty tables for CSV imports |
| `Music_Store_Queries_mysql.sql` | MySQL analysis queries |
| `mysql_import/` | Workbench-compatible CSV files |
| `Reload_album_only_mysql.sql` | Reload only the album table |
| `Music_Store_database.sql` | Original PostgreSQL custom-format dump |
| `Music_Store_Query.sql` | Original PostgreSQL analysis queries |

The original PostgreSQL database file is a custom-format dump, not a plain SQL script. Use the files marked `_mysql` for this MySQL version.
