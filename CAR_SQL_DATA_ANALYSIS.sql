drop table if exists car;


CREATE TABLE Car_data (
    brand TEXT,
    car_name TEXT,
    price TEXT,
    rating TEXT,
    safety TEXT,
    mileage TEXT,
    power_bhp TEXT
);

--count of rows
select count(*)
from Car_data;

--sample data
SELECT * 
FROM Car_data
LIMIT 10;


--null values
SELECT * 
FROM car_data
WHERE brand IS NULL
   OR car_name IS NULL
   OR price IS NULL
   OR rating IS NULL
   OR safety IS NULL
   OR mileage IS NULL
   OR power_bhp IS NULL;

-- Distinct brands
SELECT DISTINCT brand
FROM car_data
ORDER BY brand ASC;


-- Count of cars by brand
SELECT brand, COUNT(*) AS total_cars
FROM car_data
GROUP BY brand
ORDER BY total_cars ASC;


--
select *
from Car_data;

----Which cars have 5-star safety?----

SELECT *
FROM car_data
WHERE safety LIKE '%5%star%';

-----How many car brands are there?----

SELECT COUNT(DISTINCT brand) AS total_brands
FROM car_data;

----Which brand has the most cars?------


SELECT brand, COUNT(*) AS total_cars
FROM car_data
GROUP BY brand
ORDER BY total_cars DESC
LIMIT 1;


----Show 10 random cars.----

SELECT *
from Car_data
ORDER by Random()
LIMIT 10;

---- WAQTD CAR NAME THAT check the wheteher car_name ARE REPEATED or not ----


select Car_name
from Car_data
group by Car_name
having count(*)>0;

---Which cars have a rating different from 4.5/5---

SELECT *
FROM car_data
WHERE rating <> '4.5/5';


---How many cars have safety info missing?---

SELECT COUNT(*) AS missing_safety_info
FROM car_data
WHERE safety IS NULL OR safety = '';


---WAQTD name of the  if the Car_name if the Car_name are brand mileage more than Tata Nexon

SELECT Car_name
from Car_data
where mileage >( SELECT mileage
                 from Car_data
				 where Car_name= 'Tata Nexon');
			  
-----"What are the details of the car names working under the brand 'Tata'?-----

select *
from Car_data
where Brand='Tata';


---Which car names appear more than once in the table, and what are their prices?"----

SELECT car_name, COUNT(*) AS total, STRING_AGG(price, ', ') AS all_prices
FROM car_data
GROUP BY car_name
HAVING COUNT(*) > 1;


---Cars with and without safety info----

SELECT safety, COUNT(*) 
FROM car_data
GROUP BY safety;

----Cars with price above ₹10 lakh and rating below 4.0----

SELECT car_name, price, rating
FROM car_data
WHERE price ILIKE '%10%' AND rating < '4.0';

---Which cars have safety information available----


select *
from Car_data
where safety IS not null;


---Which cars do not have safety information---


select *
from Car_data
where safety IS  null;


---WAQTD details of the brand whose name start with charater T.------

select *
from Car_data
where brand LIKE 'T%';


---WAQTD all the details of the car who rating is more than 4.0 and brand in tata and price is less than 5 lakh----

select *
from Car_data
where rating>'4.0' AND 
       brand ='Tata' and 
	         price <'Rs.5.00 Lakh';
