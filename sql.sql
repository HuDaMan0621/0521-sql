Write queries to get the following:
The names of the restaurants that you gave a 5 stars to
Select * from restaurant where stars = 5;
 
The favorite dishes of all 5-star restaurants
select fav_dish from restaurant where stars = 5;
 
The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
select id from restaurant where res_name = 'Mooya';
 
Restaurants in the category of 'BBQ'
select * from restaurant where category = 'BBQ';
 
Restaurants that do take out
select * from restaurant where takeout = TRUE;
 
Restaurants that do take out and are in the category of 'BBQ'
select * from restaurant where takeout = TRUE AND category ='BBQ';
 
Restaurants within 2 miles
select * from restaurant where distance < 2;
 
Restaurants you haven't eaten at in the last week
select * from restaurant where las_visit > (select NOW() - interval '14day');
 
Restaurants you haven't eaten at in the last week and has 5 stars
select * from restaurant where las_visit < (select NOW() - interval '100day') AND stars =5;
 
Aggregation and Sorting Queries
List restaurants by the closest distance.
select * from restaurant order by distance ASC;
 
List the top 2 restaurants by distance.
select * from restaurant order by distance ASC limit 2;
 
List the top 2 restaurants by stars.
select * from restaurant order by stars desc limit 2;
 
List the top 2 restaurants by stars where the distance is less than 2 miles.
select * from restaurant where (distance <2) limit 2;
 
Count the number of restaurants in the db.
select count(res_name) from restaurant;
 
Count the number of restaurants by category.
select count(category) from restaurant;
 
Get the average stars per restaurant by category.
select AVG(stars) from restaurant;
 
Get the max stars of a restaurant by category.










List all the reviews for a given restaurant given a specific restaurant ID.
select review from review LEFT JOIN restaurant on review.review = restaurant.name; //need to redo this one. 
 
List all the reviews for a given restaurant, given a specific restaurant name.
select review from review LEFT JOIN restaurant on review.review = restaurant.name;
 
List all the reviews for a given reviewer, given a specific author name.
List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.
Get the average stars by restaurant. The result should have the restaurant name and its average star rating.
Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.
List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.
Get the average stars given by each reviewer. (reviewer name, average star rating)
Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)
Get the number of restaurants in each category. (category name, restaurant count)
Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)
Get the average star rating for a food category. (category name, average star rating)

