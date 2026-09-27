# Import project CSV files into MySQL Workbench

The `mysql_import` folder contains import-ready ASCII CSV copies for MySQL Workbench. Accented letters in text fields are transliterated (for example, `Álbum` becomes `Album`) to avoid Workbench's character-decoding error. IDs and table relationships are unchanged. The employee dates are also formatted for MySQL.

1. Execute `Music_Store_schema_mysql.sql` to create the empty tables in `music_database`.
2. In Workbench's Schemas panel, expand `music_database`, right-click **Tables**, and choose **Table Data Import Wizard**.
3. Select a CSV from `mysql_import`, keep encoding at `utf-8`, and choose **Use existing table**.
4. Choose the matching table (for example, `album.csv` → `album`) and complete the import.
5. Repeat for all 11 files, then execute `Music_Store_Queries_mysql.sql`.

Do not run `Music_Store_database_mysql.sql` as well; that script already loads all the data.
