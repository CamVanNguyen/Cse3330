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
    person_id INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(person_id)
);
CREATE table LIBUSER(
    user_id INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(40) NOT NULL
    PRIMARY KEY(user_id)
);
CREATE table BOOK(
    book_id INT NOT NULL,
    page_length INT NOT NULL,
    PRIMARY KEY(book_id)
);
CREATE table GENRE(
    genre_id INT NOT NULL,
    name VARCHAR(30);
    PRIMARY KEY(genre_id)
);
CREATE table MEDIA(
    media_id INT NOT NULL,
    runtime INT NOT NULL,
    PRIMARY KEY(media_id)
);
CREATE table CD(
    cd_id INT NOT NULL,
    num_of_tracks INT NOT NULL,
    PRIMARY KEY(cd_id)
);
CREATE table DVD(
    dvd_id INT NOT NULL,
    PRIMARY KEY(dvd_id)
);
CREATE table BLURAY(
    bluray_id INT NOT NULL,
    PRIMARY KEY(bluray_id)
);
CREATE table AUTHOR(
    book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY(book_id,author_id)
);
CREATE table PRODUCERDIRECTOR(
    media_id INT NOT NULL,
    pd_id INT NOT NULL,
    PRIMARY KEY(media_id,pd_id)
);
CREATE table ARTIST(
    media_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY(media_id,artist_id)
);
CREATE table WRITESREVIEW(
    review_num INT NOT NULL,
    item_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY(review_num, item_id, user_id)
);
CREATE table REVIEW(
    review_num INT NOT NULL,
    date_review date NOT NULL,
    text VARCHAR(150) NOT NULL,
    item_id INT NOT NULL,
    user_id INT NOT NULL,
    PRIMARY KEY(item_id,user_id,review_num)
);
CREATE table RATES(
    item_id INT NOT NULL,
    user_id INT NOT NULL,
    rating INT NOT NULL,
    PRIMARY KEY(item_id, user_id) 
); 
