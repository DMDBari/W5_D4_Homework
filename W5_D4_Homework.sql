-- Stored Function --
CREATE OR REPLACE FUNCTION get_category_count(id INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
	DECLARE category_count INTEGER;
BEGIN 
	SELECT count(category_id) INTO category_count
	FROM film_category
	WHERE category_id = id;
	RETURN category_count;
END;
$$;




-- Stored Procedure --
CREATE OR REPLACE PROCEDURE add_film(title VARCHAR(255), description VARCHAR, release_year INTEGER, language_id INTEGER, rental_duration INTEGER, rental_rate NUMERIC(4,2), "length" INTEGER, replacement_cost NUMERIC(5,2), rating MPAA_RATING)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO film(title, description, release_year, language_id, rental_duration, rental_rate, "length", replacement_cost, rating)
	VALUES (title, description, release_year, language_id, rental_duration, rental_rate, "length", replacement_cost, rating);
END;
$$;






