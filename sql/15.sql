/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */


 select c.name, count(f.film_id) as sum from film join film_category using (film_id) join category using (category_id) join language using (language_id) where language.name = 'English' group by category.name;

