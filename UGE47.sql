/*OPGAVE 1 */
/*B*/
USE sakila;

/*C*/
SELECT * from actor;

/*D*/
SELECT * from actor
where last_name = "CAGE";

/*E*/
SELECT * from actor
where not first_name = "ZERO" and NOT first_name = "NICK";

/*F*/
SELECT * from actor
where first_name in ("NICK","JOHNNY", "JAMES", "MORGAN", "WHOOPI");

/*G*/
SELECT * from actor
where actor_id between 50 and 150;

/*H*/ 
SELECT * from actor
where first_name LIKE "C%";

/*I*/
SELECT * from actor
order by first_name;

/*J*/
SELECT * from actor
order by last_name desc;

/*K*/
SELECT count(actor_id) from actor;

/*L*/
SELECT distinct first_name from actor;

/*m*/

SELECT * from category
where name in ("HORROR");

/*N*/

/*OPAGVE 2*/
/*A*/
INSERT into actor (first_name, last_name)
VALUES ("ANNIKA", "ROSENVINGE JESPERSEN");

/*B*/
INSERT into film_actor (actor_id, film_id)
VALUES (201, 74);
INSERT into film_actor (actor_id, film_id)
VALUES (201, 829);
INSERT into film_actor (actor_id, film_id)
VALUES (201, 237);
INSERT into film_actor (actor_id, film_id)
VALUES (201, 69);
INSERT into film_actor (actor_id, film_id)
VALUES (201, 420);

/*C*/
UPDATE actor set first_name = "Ann", last_name = "Rose"
where actor_id = 201;

/*D*/
DELETE from actor
where actor_id = 201;

/*OPGAVE 3*/
/*A*/
SELECT * from category;
/*HORROR is number 11*/

/*B*/
SELECT  actor.first_name, actor.last_name, film.title, category.name FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film on film.film_id = film_actor.film_id
JOIN film_category on film_category.film_id = film_actor.film_id
JOIN category on category.category_id = film_category.category_id
WHERE category.category_id = 11;

/*OPAGVE 4*/

