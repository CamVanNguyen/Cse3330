/* CAM NGUYEN 1000952534
   TANMAY SARDESAI 1001094616*/
   
CREATE DATABASE Library_Catalog;
USE Library_Catalog;

CREATE table ITEM( 
    item_id INT(9) NOT NULL, CHECK ( item_id <= 999999999 AND item_id >= 100000000 ),
    title VARCHAR(50) NOT NULL,
    publish_date YEAR(4) NOT NULL, CHECK( publish_date <= YEAR(CURDATE())),
    recommended_id INT(9), CHECK (recommended_id <= 999999999 AND recommended_id >= 100000000),
    user_id INT(10), CHECK(user_id <= 9999999999 AND user_id >= 1000000000), 
    publisher_id INT(2) NOT NULL,
    genre_id INT(3) NOT NULL,
    cover_image VARCHAR(100),
    PRIMARY KEY(item_id)
);
CREATE table PERSON(
    person_id INT(2) NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(person_id)
);
CREATE table LIBUSER(
    user_id INT(10) NOT NULL, CHECK (user_id <= 9999999999 AND user_id >= 1000000000),
    name VARCHAR(30) NOT NULL,
    address VARCHAR(40) NOT NULL,
    PRIMARY KEY(user_id)
);
CREATE table BOOK(
    book_id INT(9) NOT NULL CHECK (book_id <= 999999999  AND book_id >= 100000000),
    page_length INT NOT NULL CHECK (page_length > 0),
    PRIMARY KEY(book_id),
    CONSTRAINT FK_BOOK_ITEM_book_id FOREIGN KEY(book_id) REFERENCES ITEM(item_id)
);
CREATE table GENRE(
    genre_id INT(3) NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(genre_id)
);
CREATE table MEDIA(
    media_id INT(9) NOT NULL, CHECK (media_id <= 999999999  AND media_id >= 100000000),
    runtime INT NOT NULL, CHECK(runtime > 0),
    PRIMARY KEY(media_id),
    CONSTRAINT FK_MEDIA_ITEM_media_id FOREIGN KEY(media_id) REFERENCES ITEM(item_id)
);
CREATE table CD(
    cd_id INT(9) NOT NULL, CHECK (cd_id <= 999999999  AND item_id >= 100000000),
    num_of_tracks INT NOT NULL, CHECK(num_of_track > 0),
    PRIMARY KEY(cd_id),
    CONSTRAINT FK_CD_MEDIA_media_id FOREIGN KEY(cd_id) REFERENCES MEDIA(media_id)
);
CREATE table DVD(
    dvd_id INT(9) NOT NULL, CHECK (dvd_id <= 999999999  AND dvd_id >= 100000000),
    PRIMARY KEY(dvd_id),
    CONSTRAINT FK_DVD_MEDIA_media_id FOREIGN KEY(dvd_id) REFERENCES MEDIA(media_id)
);
CREATE table BLURAY(
    bluray_id INT(9) NOT NULL, CHECK (bluray_id <= 999999999 AND bluray_id >= 100000000),
    PRIMARY KEY(bluray_id),
    CONSTRAINT FK_BLURAY_MEDIA_media_id FOREIGN KEY(bluray_id) REFERENCES MEDIA(media_id)
);
CREATE table AUTHOR(
    book_id INT(9) NOT NULL, CHECK (book_id <= 999999999 AND book_id >= 100000000),
    author_id INT(9) NOT NULL,
    PRIMARY KEY(book_id,author_id),
    CONSTRAINT FK_AUTHOR_BOOK_book_id FOREIGN KEY(book_id) REFERENCES BOOK(book_id),
    CONSTRAINT FK_AUTHOR_PERSON_person_id FOREIGN KEY(author_id) REFERENCES PERSON(person_id)
);
CREATE table PRODUCERDIRECTOR(
    media_id INT(9) NOT NULL, CHECK (media_id <= 999999999 AND media_id >= 100000000),
    pd_id INT(9) NOT NULL,
    PRIMARY KEY(media_id,pd_id),
    CONSTRAINT FK_PRODUCERDIRECTOR_MEDIA_media_id FOREIGN KEY(media_id) REFERENCES MEDIA(media_id),
    CONSTRAINT FK_PRODUCERDIRECTOR_PERSON_person_id FOREIGN KEY(pd_id) REFERENCES PERSON(person_id)
);
CREATE table ARTIST(
    media_id INT(9) NOT NULL, CHECK (media_id <= 999999999 AND media_id >= 100000000),
    artist_id INT(9) NOT NULL,
    PRIMARY KEY(media_id,artist_id),
    CONSTRAINT FK_ARTIST_MEDIA_media_id FOREIGN KEY(media_id) REFERENCES MEDIA(media_id),
    CONSTRAINT FK_ARTIST_PERSON_person_id FOREIGN KEY(artist_id) REFERENCES PERSON(person_id)
);
CREATE table REVIEW(
    review_num INT NOT NULL,
    date_review DATE NOT NULL,CHECK( date_review <= DATE(NOW())),
    text VARCHAR(150) NOT NULL,
    item_id INT NOT NULL, CHECK(item_id <= 999999999 AND item_id >= 100000000),
    user_id INT NOT NULL, CHECK(user_id <= 9999999999 AND user_id >= 1000000000),
    PRIMARY KEY(review_num, item_id, user_id),
    CONSTRAINT FK_REVIEW_ITEM_item_id FOREIGN KEY(item_id) REFERENCES ITEM(item_id),
    CONSTRAINT FK_REVIEW_LIBUSER_user_id FOREIGN KEY(user_id) REFERENCES LIBUSER(user_id)
);
CREATE table WRITESREVIEW(
    review_num INT NOT NULL,
    item_id INT(9) NOT NULL, CHECK(item_id <= 999999999  AND item_id >= 100000000),
    user_id INT(10) NOT NULL, CHECK(user_id <= 9999999999 AND user_id >= 1000000000),
    PRIMARY KEY(review_num, item_id, user_id),
    CONSTRAINT FK_WRITESREVIEW_ITEM_item_id FOREIGN KEY(item_id) REFERENCES ITEM(item_id),
    CONSTRAINT FK_WRITESREVIEW_LIBUSER_user_id FOREIGN KEY(user_id) REFERENCES LIBUSER(user_id),
    CONSTRAINT FK_WRITESREVIEW_REVIEW_review_num FOREIGN KEY(review_num) REFERENCES REVIEW(review_num)
);

CREATE table RATES(
    item_id INT(9) NOT NULL, CHECK(item_id <= 999999999 AND item_id >= 100000000),
    user_id INT(10) NOT NULL, CHECK(user_id <= 9999999999 AND user_id >= 1000000000),
    rating INT(1) NOT NULL, CHECK(rating<=5 AND ratings>=1),
    PRIMARY KEY(item_id, user_id) ,
    CONSTRAINT FK_RATES_LIBUSER_user_id FOREIGN KEY(user_id) REFERENCES LIBUSER(user_id),
    CONSTRAINT FK_RATES_ITEM_item_id FOREIGN KEY(item_id) REFERENCES ITEM(item_id)
);

ALTER TABLE ITEM ADD CONSTRAINT FK_RECCOMEND_ITEM_recommended_id FOREIGN KEY (recommended_id) REFERENCES ITEM(item_id);
ALTER TABLE ITEM ADD CONSTRAINT FK_ITEM_LIBUSER_user_id FOREIGN KEY (user_id) REFERENCES LIBUSER(user_id);
ALTER TABLE ITEM ADD CONSTRAINT FK_ITEM_PERSON_publisher_id FOREIGN KEY (publisher_id) REFERENCES PERSON(person_id);
ALTER TABLE ITEM ADD CONSTRAINT FK_ITEM_GENRE_genre_id FOREIGN KEY (genre_id) REFERENCES GENRE(genre_id);


CREATE VIEW RATINGS_VIEW AS
SELECT a.I AS item_id ,AVG(R) AS Avg_Ratings
FROM ((SELECT ITEM.item_id AS I, RATES.rating AS R
      FROM 
      ITEM LEFT JOIN RATES ON ITEM.item_id=RATES.item_id) AS a )
GROUP BY a.I
ORDER BY Avg_Ratings DESC;

