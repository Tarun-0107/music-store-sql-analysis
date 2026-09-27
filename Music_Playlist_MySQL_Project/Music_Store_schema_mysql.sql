-- MySQL 8.0 compatible Music Store database and data
CREATE DATABASE IF NOT EXISTS music_database CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE music_database;
SET NAMES utf8mb4;

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (album_id VARCHAR(50) NOT NULL, title VARCHAR(120), artist_id VARCHAR(30), PRIMARY KEY (album_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `artist`;
CREATE TABLE `artist` (artist_id VARCHAR(50) NOT NULL, name VARCHAR(120), PRIMARY KEY (artist_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (customer_id INT NOT NULL, first_name CHAR(50), last_name CHAR(50), company VARCHAR(120), address VARCHAR(120), city VARCHAR(50), state VARCHAR(50), country VARCHAR(50), postal_code VARCHAR(50), phone VARCHAR(50), fax VARCHAR(50), email VARCHAR(50), support_rep_id INT, PRIMARY KEY (customer_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (employee_id VARCHAR(50) NOT NULL, last_name CHAR(50), first_name CHAR(50), title VARCHAR(50), reports_to VARCHAR(30), levels VARCHAR(10), birthdate DATETIME, hire_date DATETIME, address VARCHAR(120), city VARCHAR(50), state VARCHAR(50), country VARCHAR(30), postal_code VARCHAR(30), phone VARCHAR(30), fax VARCHAR(30), email VARCHAR(30), PRIMARY KEY (employee_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (genre_id VARCHAR(50) NOT NULL, name VARCHAR(120), PRIMARY KEY (genre_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (invoice_id INT NOT NULL, customer_id INT, invoice_date DATETIME, billing_address VARCHAR(120), billing_city VARCHAR(30), billing_state VARCHAR(30), billing_country VARCHAR(30), billing_postal_code VARCHAR(30), total DOUBLE, PRIMARY KEY (invoice_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `invoice_line`;
CREATE TABLE `invoice_line` (invoice_line_id VARCHAR(50) NOT NULL, invoice_id INT, track_id INT, unit_price DOUBLE, quantity DOUBLE, PRIMARY KEY (invoice_line_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `media_type`;
CREATE TABLE `media_type` (media_type_id VARCHAR(50) NOT NULL, name VARCHAR(120), PRIMARY KEY (media_type_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist` (playlist_id VARCHAR(50) NOT NULL, name VARCHAR(120), PRIMARY KEY (playlist_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `playlist_track`;
CREATE TABLE `playlist_track` (playlist_id VARCHAR(50) NOT NULL, track_id INT NOT NULL, PRIMARY KEY (playlist_id, track_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE IF EXISTS `track`;
CREATE TABLE `track` (track_id INT NOT NULL, name VARCHAR(150), album_id VARCHAR(50), media_type_id VARCHAR(50), genre_id VARCHAR(50), composer VARCHAR(190), milliseconds INT, bytes INT, unit_price DOUBLE, PRIMARY KEY (track_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
