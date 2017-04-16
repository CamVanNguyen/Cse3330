/*
  Search all books, CDs, DVDs and Blu-rays in Food Genre.
*/

SELECT * 
FROM ITEM INNER JOIN GENRE ON ITEM.genre_id = GENRE.genre_id 
WHERE GENRE.name="FOOD";

/*
  Show all items with ratings more than or equal to 4.
*/

SELECT *
FROM RATINGS_VIEW INNER JOIN ITEM ON RATINGS_VIEW.item_id = ITEM.item_id
WHERE Avg_Ratings >= 4;

/*
  Show all the unrated items in the library in ascending order of item_id.
*/

SELECT * 
FROM RATINGS_VIEW INNER JOIN ITEM ON RATINGS_VIEW.item_id = ITEM.item_id 
WHERE Avg_Ratings IS NULL 
ORDER BY ITEM.item_id ASC;

/*
  Show all the books that are currently borrowed by users in ascending order of user_id.
*/

SELECT * 
FROM ITEM INNER JOIN BOOK ON ITEM.item_id=BOOK.book_id 
WHERE user_id IS NOT NULL 
ORDER BY user_id ASC;

/*
  Show number of items borrowed by each user.
*/
SELECT COUNT(user_id),user_id 
FROM ITEM
WHERE user_id IS NOT NULL 
GROUP BY user_id 
ORDER BY COUNT(user_id) DESC;

/*
  All books on science between 1950 to 1970 in descending order.
*/

SELECT * 
FROM (ITEM INNER JOIN BOOK ON ITEM.item_id=BOOK.book_id) INNER JOIN GENRE ON ITEM.genre_id = GENRE.genre_id
WHERE GENRE.name = "SCIENCE" AND ITEM.publish_date BETWEEN 1950 AND 1970
ORDER BY ITEM.publish_date DESC;


