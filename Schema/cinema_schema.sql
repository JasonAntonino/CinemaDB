DROP DATABASE IF EXISTS cinemaDatabase;
CREATE DATABASE cinemaDatabase;
USE cinemaDatabase;

CREATE TABLE customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
	customer_name VARCHAR(100) NOT NULL,
	customer_email VARCHAR(60) NOT NULL UNIQUE,
	customer_bankDetails VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE movies(
	movie_id INT PRIMARY KEY AUTO_INCREMENT,
	movie_title VARCHAR(120) NOT NULL UNIQUE,
	movie_description VARCHAR(1000) NOT NULL,
	movie_releaseDate DATE NOT NULL,
	movie_ageRestriction VARCHAR(20) NOT NULL
);

CREATE TABLE bookings(
	booking_id INT PRIMARY KEY AUTO_INCREMENT,
	fk_customer_id INT NOT NULL,
	fk_movie_id INT NOT NULL,
	booking_date DATE NOT NULL,
	booking_seat_amount BIT NOT NULL,
	FOREIGN KEY(fk_customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(fk_movie_id) REFERENCES movies(movie_id)
);