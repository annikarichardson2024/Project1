USE aer6bk;

# 5 tables include: Movie bedugets, stores where the movie are sold, film information,
# the language each film is shown in, and Countrys where each 
INSERT INTO Budget
VALUES
     (245, 'The Help','$25,000,000 (estimated)'),
     (246, 'It Happened One Nigh', '$325,000,000 (estimated)'),
     (247, 'Aladdin', '$28,000,000 (estimated)'),
	 (248, 'TDances with Wolves', '$22,000,000 (estimated)');

CREATE TABLE store (
  store_id INT NOT NULL,
  address_id VARCHAR(45) NOT NULL,
  PRIMARY KEY (store_id));
  
CREATE TABLE film (
  film_id INT NOT NULL,
  title VARCHAR(45) NOT NULL,
  language_id INT NOT NULL,
  PRIMARY KEY (language_id));

  
  
SELECT * FROM Language;
SELECT * FROM film; 
SELECT * FROM Budget;  
SELECT * FROM store;


INSERT INTO aer6bk.film(film_id, title, language_id)
SELECT film_id, title, language_id
FROM sakila.film
WHERE(language_id > 1);


SELECT * FROM film
WHERE language_id > 2;

SELECT title 
FROM film 
INNER JOIN Language
ON film.title = Language.original_title;

SELECT lat
FROM CountryAPI2 
INNER JOIN Language
ON CountryAPI2.lat = Language.original_language;
