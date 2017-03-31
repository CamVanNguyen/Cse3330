create schema Library_Catalog;

CREATE table ITEM( 
  item_id INT NOT NULL,
  title VARCHAR(50) NOT NULL,
  publish_date INT NOT NULL,
  recommened_id NOT NULL,
  user_id INT,
  publisher_id INT NOT NULL,
  genre_id INT NOT NULL
  PRIMARY KEY(item_id)
);
CREATE table PERSON(

);
CREATE table LIBUSER(

);
CREATE table BOOK(
);
CREATE table GENRE(
);
CREATE table MEDIA(
);
CREATE table CD(
);
CREATE table DVD(
);
CREATE table BLURAY(
);
CREATE table AUTHOR(
);
CREATE table PRODUCERDIRECTOR(
);
CREATE table ARTIST(
);
CREATE table WRITESREVIEW(
);
CREATE table REVIEW(
);
CREATE table RATES(
); 
