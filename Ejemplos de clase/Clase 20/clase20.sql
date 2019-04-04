-- use sakila;

-- describe country;
-- describe payment;
-- describe staff;
-- select * from country;
-- select * from payment;
-- select * from staff;
-- select staff_id from staff;

/**
 * * Inner Join
 */
 
/**
	select sum(amount)
	from staff as s inner join payment as p
		on (s.staff_id = p.staff_id)
	where s.store_id = 1;
*/

/**
 * * Another way to do the same
	select sum(amount)
		from staff, payment
		where staff.store_id = 1 and staff.staff_id = payment.staff_id
        
*/

-- How many cities are there in each country?
/**
	select country, count(*) as counter
		from country as co inner join city as ci
			on (co.country_id = ci.country_id)
		group by country
		order by counter desc;
*/

-- Wich countries have more than 3 cities?
-- With the 'having' statement.

select country, count(*) as counter
	from country as co inner join city as ci
		on (co.country_id = ci.country_id)
	group by country
    having count(*) > 2
	order by counter; -- desc indicates descendent order.
