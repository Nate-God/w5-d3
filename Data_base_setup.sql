CREATE TABLE IF NOT EXISTS Customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone_number INTEGER not NULL
);


CREATE TABLE IF NOT EXISTS Movie (
	movie_id SERIAL PRIMARY KEY,
	title_name VARCHAR(50) NOT NULL,
	Genre VARCHAR(100) NOT NULL,
	release_date DATE NOT NULL
	
);

CREATE TABLE IF NOT EXISTS Ticket (
	ticket_id SERIAL PRIMARY KEY, 
	date_created TIMESTAMP NOT NULL,
	seat INTEGER not null,
	theater VARCHAR(50),
	showing_time VARCHAR(20),
	FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);