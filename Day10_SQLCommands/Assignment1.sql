/*
1. Query the countries table in the countries table schema to return records where the population is 
over 200 million. Sort the results in descending population order.
*/
SELECT * FROM COUNTRIES.COUNTRIES
	WHERE POPULATION > 200000000
    ORDER BY POPULATION DESC;

/*
2. Query the emp table in the HR schema to return records where the employee earns a commision.
Sort the results in ascending order of commision.
*/
SELECT * FROM HR.EMP 
	WHERE COMM IS NOT NULL
    ORDER BY COMM;

/*
3. Querythe ORDER_ITEMS table in the customer_orders schema to return records where the quantity is above 4
and the unit price is above 49.
*/
SELECT * FROM CUSTOMER_ORDERS.ORDER_ITEMS
	WHERE QUANTITY > 4 AND UNIT_PRICE > 49;
	
/*
IN THE COUNTRIES Table of countries schema filter records to return those where both condns are met:
1: the population is between 100 and 200 million inclusive or the area of the country is over 5 million km
2: the country name is a single word (contains no whitespaces)
*/
SELECT * FROM COUNTRIES.COUNTRIES
	WHERE ((POPULATION BETWEEN 100000000 AND 200000000) OR (AREA_KM2 > 5000000))
		  AND
          (NAME NOT LIKE '% %');