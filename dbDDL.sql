create schema Library_Catalog;

CREATE table ITEM( 
    item_id INT NOT NULL CHECK( item_id <= 999999999 ),
    title VARCHAR(50) NOT NULL,
    publish_date INT NOT NULL,
    recommened_id NOT NULL CHECK (recommened_id <= 999999999),
    user_id INT CHECK(user_id <= 9999999999), --Can be null if a user did not check out the item
    publisher_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY(item_id),
    FOREIGN KEY (recommended_id) REFERENCES ITEM(item_id),
    FOREIGN KEY (user_id) REFERENCES LIBUSER(user_id),
    FOREIGN KEY (publisher_id) REFERENCES PERSON(person_id),
    FOREIGN KEY (genre_id) REFERENCES GENRE(genre_id)
);
CREATE table PERSON(
    person_id INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(person_id)
);
CREATE table LIBUSER
    user_id INT NOT NULL CHECK (user_id <= 9999999999),
    name VARCHAR(30) NOT NULL,
    address VARCHAR(40) NOT NULL,
    PRIMARY KEY(user_id)
);
CREATE table BOOK(
    book_id INT NOT NULL CHECK (book_id <= 9999999999),
    page_length INT NOT NULL CHECK (page_length > 0),
    PRIMARY KEY(book_id),
    FOREIGN KEY(book_id) REFERENCES ITEM(item_id)
);
CREATE table GENRE(
    genre_id INT NOT NULL,
    name VARCHAR(30),
    PRIMARY KEY(genre_id)
);
CREATE table MEDIA(
    media_id INT NOT NULL CHECK (media_id <= 999999999),
    runtime INT NOT NULL CHECK(runtime > 0),
    PRIMARY KEY(media_id),
    FOREIGN KEY(media_id) REFERENCES ITEM(item_id)
);
CREATE table CD(
    cd_id INT NOT NULL CHECK (cd_id <= 999999999), --CD must have 9 digit id and also needs to be not NULL
    num_of_tracks INT NOT NULL CHECK(num_of_track > 0),
    PRIMARY KEY(cd_id),
    FOREIGN KEY(cd_id) REFERENCES MEDIA(media_id)
);
CREATE table DVD(
    dvd_id INT NOT NULL CHECK (dvd_id <= 999999999),
    PRIMARY KEY(dvd_id),
    FOREIGN KEY(dvd_id) REFERENCES MEDIA(media_id)
);
CREATE table BLURAY(
    bluray_id INT NOT NULL CHECK (bluray_id <= 999999999),
    PRIMARY KEY(bluray_id),
    FOREIGN KEY(bluray_id) REFERENCES MEDIA(media_id)
);
CREATE table AUTHOR(
    book_id INT NOT NULL CHECK (book_id <= 999999999),
    author_id INT NOT NULL,
    PRIMARY KEY(book_id,author_id),
    FOREIGN KEY(book_id) REFERENCES BOOK(book_id),
    FOREIGN KEY(author_id) REFERENCES PERSON(person_id)
);
CREATE table PRODUCERDIRECTOR(
    media_id INT NOT NULL CHECK (media_id <= 999999999),
    pd_id INT NOT NULL,
    PRIMARY KEY(media_id,pd_id),
    FOREIGN KEY(media_id) REFERENCES MEDIA(media_id),
    FOREIGN KEY(pd_id) REFERENCES PERSON(person_id)
);
CREATE table ARTIST(
    media_id INT NOT NULL (media_id <= 999999999),
    artist_id INT NOT NULL,
    PRIMARY KEY(media_id,artist_id),
    FOREIGN KEY(media_id) REFERENCES MEDIA(media_id),
    FOREIGN KEY(artist_id) REFERENCES PERSON(person_id)
);
CREATE table WRITESREVIEW(
    review_num INT NOT NULL,
    item_id INT NOT NULL CHECK(item_id <= 999999999),
    user_id INT NOT NULL CHECK(user_id <= 9999999999),
    PRIMARY KEY(review_num, item_id, user_id),
    FOREIGN KEY(item_id) REFERENCES ITEM(item_id),
    FOREIGN KEY(user_id) REFERENCES LIBUSER(user_id),
    FOREIGN KEY(review_num) REFERENCES REVIEW(review_num)
);
CREATE table REVIEW(
    review_num INT NOT NULL,
    date_review date NOT NULL,
    text VARCHAR(150) NOT NULL,
    item_id INT NOT NULL CHECK(item_id <= 999999999),
    user_id INT NOT NULL CHECK(user_id <= 9999999999),
    PRIMARY KEY(item_id,user_id,review_num),
    FOREIGN KEY(item_id) REFERENCES ITEM(item_id),
    FOREIGN KEY(user_id) REFERENCES LIBUSER(user_id)
);
CREATE table RATES(
    item_id INT NOT NULL CHECK(item_id <= 999999999),
    user_id INT NOT NULL CHECK(user_id <= 9999999999),
    rating INT NOT NULL rating BETWEEN 1 AND 5,
    PRIMARY KEY(item_id, user_id) ,
    FOREIGN KEY(user_id) REFERENCES LIBUSER(user_id),
    FOREIGN KEY(item_id) REFERENCES ITEM(item_id)
); 
