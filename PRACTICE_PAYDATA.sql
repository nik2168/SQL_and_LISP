CREATE DATABASE IF NOT EXISTS payment;

USE payment;

CREATE TABLE IF NOT EXISTS payData(
customer_id  SMALLINT UNIQUE PRIMARY KEY AUTO_INCREMENT,
customer VARCHAR(30),
payMODE VARCHAR(30),
city VARCHAR(30)
);


INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(1, "Jagdeep", "UPI", "Goa");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(2, "Nik", "Cash", "Tokyo");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(3, "Sam", "Apple Pay", "Delhi");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(4, "William", "Netflix Pay", "Singapore");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(5, "Bilu", "UPI", "Manali");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(6, "Tony", "Apple Pay", "Lahore");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(7, "Riya", "Cash", "Goa");
INSERT INTO payData (customer_id, customer, payMODE, city) VALUES(8, "Rambo", "Card", "Kashmir");

SELECT payMODE, COUNT(payMODE) FROM payData GROUP BY payMODE; -- group paymode mode according to cities

SELECT 