/* CAM NGUYEN 1000952534
   TANMAY SARDESAI 1001094616 */
USE Library_Catalog;
/*******PERSON*******/
/*******************/

/*PUBLISHER*/
INSERT into PERSON(person_id,name)
VALUES( 39, 'DOUBLEDAY');

INSERT into PERSON(person_id,name)
VALUES( 40, 'ALFRED A. KNOPF');

INSERT into PERSON(person_id,name)
VALUES ( 41, 'LITTLE BROWN BOOK GROUP');

INSERT into PERSON(person_id, name)
VALUES (42, 'SIMON & SCHUSTER');

INSERT into PERSON(person_id,name)
VALUES (43, 'HOUGHTON MIFFLIN HARCOURT');

INSERT into PERSON(person_id,name)
VALUES (44, 'PENGUIN');

INSERT into PERSON(person_id,name)
VALUES (45, 'ATOM PRESS');

/*MOVIE PUBLISHERS*/

INSERT into PERSON(person_id,name)
VALUES (46, 'UNIVERSAL STUDIOS');

INSERT into PERSON(person_id, name)
VALUES (47, 'ANCHOR BAY ENTERTAINMENT');

INSERT into PERSON(person_id,name)
VALUES (48, 'WALT DISNEY STUDIOS');

INSERT into PERSON(person_id,name)
VALUES (49, 'STUDIO SOLUTION GROUP');

INSERT into PERSON(person_id,name)
VALUES (50, 'MIRAMAX');

INSERT into PERSON(person_id,name)
VALUES (51, 'DOGWOLF PRICTURES');

/*AUTHOR*/
INSERT into PERSON (person_id, name)
VALUES (11, 'STEPHEN KING');

INSERT into PERSON (person_id, name)
VALUES (12, 'ROALD DAHL');

INSERT into PERSON (person_id, name)
VALUES (13, 'J K ROWLING');

INSERT into PERSON(person_id, name)
VALUES (14, 'MICHEAL CRICHTON');

INSERT into PERSON(person_id, name)
VALUES( 15, 'LILY JAMES');

INSERT into PERSON(person_id, name)
VALUES( 16, 'ERIC SCHLOSSER');

INSERT into PERSON(person_id, name)
VALUES( 17, 'MICHEAL POLLAN');

INSERT into PERSON(person_id, name)
VALUES( 18, 'KAREN TATE');

/*DIRECTOR*/
INSERT into PERSON(person_id, name)
VALUES( 19, 'STEVEN SPIELBREG');

INSERT into PERSON(person_id, name)
VALUES (20, 'TODD HAYNES');

INSERT into PERSON(person_id, name)
VALUES (21 , 'HENRY SELICK');

INSERT into PERSON(person_id, name)
VALUES (22 , 'BRAD BIRD');

INSERT into PERSON (person_id, name)
VALUES (23, 'KEVIN SMITH');

INSERT into PERSON(person_id, name)
VALUES (24 ,'QUENTIN TARANTINO');

INSERT into PERSON(person_id, name)
VALUES (25, 'ROBERT KENNER');

INSERT into PERSON(person_id, name)
VALUES (30, 'STANLEY KUBRICK');

INSERT into PERSON(person_id, name)
VALUES (31, 'ROBERT EGGERS');

/* ARTIST */
INSERT into PERSON(person_id, name)
VALUES (32, 'ADELE');

INSERT into PERSON(person_id, name)
VALUES (33, 'RADIOHEAD');

INSERT into PERSON(person_id, name)
VALUES (34, 'NINE INCH NAILS');

INSERT into PERSON(person_id, name)
VALUES (35, 'THE XX');

INSERT into PERSON(person_id, name)
VALUES (36, 'MILES DAVIS');

INSERT into PERSON(person_id, name)
VALUES (38, 'THE BEATLES');

INSERT into PERSON(person_id,name)
VALUES (37, 'NIRVANA');

/*PRODUCER*/

INSERT into PERSON(person_id, name)
VALUES (26, 'JON FAVREAU');

INSERT into PERSON(person_id,name)
VALUES (27, 'CLAUDIE OSSARD');

INSERT into PERSON(person_id, name)
VALUES (28, 'ANNE ROSELLINI');

INSERT into PERSON(person_id, name)
VALUES (29, 'PETER SAFRAN');
 
/*GENRE*/
INSERT into GENRE(genre_id,name)
VALUES (100, 'HORROR');

INSERT into GENRE(genre_id,name)
VALUES (101, 'FOOD');

INSERT into GENRE(genre_id,name) 
VALUES (102, 'COMEDY');

INSERT into GENRE(genre_id,name)
VALUES (103, 'DRAMA');

INSERT into GENRE(genre_id,name)
VALUES (104, 'FANTASY');

INSERT into GENRE(genre_id,name)
VALUES (105, 'ROCK');

INSERT into GENRE(genre_id,name)
VALUES (106, 'POP');

INSERT into GENRE(genre_id,name)
VALUES (107, 'JAZZ');

INSERT into GENRE(genre_id,name)
VALUES (108, 'RAP');

INSERT into GENRE(genre_id,name)
VALUES (109, 'SCIENCE');

/*LIBUSERS*/
INSERT into LIBUSER (user_id, name, address)
VALUES (1234567890, 'JOHN SMITH','12 COURT LANE, ARLINGTON, TX, 76103');

INSERT into LIBUSER (user_id, name, address)
VALUES (1234567891, 'JOHN JAMES','15 MILDRED CIRCLE, ARLINGTON, TX, 76323');

INSERT into LIBUSER (user_id, name, address)
VALUES (1234267820, 'KATE SMITH','12 COURT LANE, ARLINGTON, TX, 76103');

INSERT into LIBUSER (user_id, name, address)
VALUES (1254567830, 'PARK KIM','189 ROYAL LANE, ARLINGTON, TX, 76133');

INSERT into LIBUSER (user_id, name, address)
VALUES (1374567830, 'LEE KIM','179 HOUSTON STREET, ARLINGTON, TX, 76133');

INSERT into LIBUSER (user_id, name, address)
VALUES (1238564830, 'SARAH HA','129 DALLAS CIRCLE, ARLINGTON, TX, 76121');

INSERT into LIBUSER (user_id, name, address)
VALUES (1290537830, 'LUKE CERA','145 VICTORY STREET, ARLINGTON, TX, 76133');

INSERT into LIBUSER (user_id, name, address)
VALUES (1233447830, 'RYAN GONAZLES','132 6TH STREET, ARLINGTON, TX, 76133');

INSERT into LIBUSER (user_id, name, address)
VALUES (1234216830, 'MARIA CANALES','189 WALL COURT, ARLINGTON, TX, 76133');

INSERT into LIBUSER (user_id, name, address)
VALUES (1232247830, 'HOA LI','159 RED LANE, ARLINGTON, TX, 76133');

/**********ITEMS*******************/
/*********************************/

/* BOOK ITEMS*/
INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (100234564, 'CARRIE', 1974,NULL,  1234567890, 39 ,100, 'res/books/carrie.jpg' );

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (102345358, 'END OF WATCH', 2011,NULL,  NULL,42 ,100, 'res/books/end_of_watch.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (105612888, 'JURASSIC PARK', 1990,NULL, NULL, 40 ,100, 'res/books/jurrassic_park.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (105612222, 'HARRY POTTER AND THE SORCERER''S STONE', 1997,NULL,  1238564830,41 , 104, 'res/books/harry_potter_and_the_sorcerers_stone.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (105612223, 'HARRY POTTER AND THE CHAMBER OF SECRETS', 1998, 105612222, NULL, 41, 104, 'res/books/harry_potter_and_the_chamber_of_secrets.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (103206989, 'THE GIRL', 1999,105612222, NULL, 44 , 102, 'res/books/the_girl.png');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (107915623, 'FAST FOOD NATION', 2001,NULL, 1238564830,43 ,101, 'res/books/fast_food_nation.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (108561347, 'FOOD RULES: AN EATER''S MANUAL', 2009,107915623, NULL,44,101, 'res/books/food_rules_an_eaters_guide.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (105612093, 'THE WONDERWORLD OF SCIENCE', 1950,NULL , NULL,45,109,'res/books/the_wonderworld_of_science.png');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (104589032, 'MODERN SCIENCE', 1960, 105612093 , NULL, 45,109, 'res/books/modern_science.png');

/*BLURAY ITEMS*/
INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (205612089, 'JURASSIC PARK', 2013,  105612888,1234567890, 46,100, 'res/blurays/jurassic_park.jpg' );

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (203402343, 'CAROL', 2015, NULL, NULL, 47,103 ,'res/blurays/carol.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (203414443, 'JAMES AND THE GIANT PEACH', 2010, 203402343, 1238564830, 48,101,'res/blurays/james_and_the_giant_peach.jpeg' );

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (203477343, 'RATATOUILLE', 2007, 203414443, NULL,47 ,101,'res/blurays/rataouille.jpg' );

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (205567343, 'CLERKS', 2009,203477343, NULL,49 ,102,'res/blurays/clerks.jpg' );

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (203486343, 'PULP FICTION', 2011,205567343,  NULL,50 , 103,'res/blurays/pulp_fiction.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (203412343, 'FOOD INC', 2012,107915623,NULL, 51,101,'res/blurays/food_inc.jpg' );

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (201023456, 'KILL BILL', 2003,203412343,  NULL, 50, 103,'res/blurays/kill_bill.jpg'); 

/*DVD ITEMS*/
INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (305612890, 'JURASIC PARK', 1993,NULL, NULL, 46,100, 'res/dvds/jurassic_park.jpg' );

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (309012343, 'CHEF', 2014,305612890,  NULL,49 , 101, 'res/dvds/chef.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (309112343, 'DELICATESSEN', 1991, 309012343,NULL, 50,101,'res/dvds/delicatessen.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (303421443, 'WINTER''S BONE', 2010,309112343,  1234567890, 51,103,'res/dvds/winters_bone.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (300479543, 'THE CONJURING', 2013,NULL,NULL, 47,100,'res/dvds/the_conjuring.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (308012343, 'THE SHINNING', 2001,NULL, NULL,50 ,100,'res/dvds/the_shinning.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (307612343, 'THE WITCH', 2015,300479543, NULL,46 ,100,'res/dvds/the_witch.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (302398881, 'THE AVIATOR', 2004, NULL, 1232247830,50 ,103,'res/dvds/the_aviator.jpg');

/*CD ITEMS*/
INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (924512343, '25', 2015,NULL,NULL, 39,106,'res/cds/25.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (928012343, 'KID A', 2000,924512343, 1232247830,44 ,108,'res/cds/kid_a.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (911072343, 'THE FRAGILE', 1999,928012343,  NULL, 45,105,'res/cds/the_fragile.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (923412541, 'I SEE YOU', 2017, 911072343, NULL,41 ,105,'res/cds/i_see_you.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (923412212, 'KIND OF BLUE', 1997,923412541, NULL,42 ,107,'res/cds/kind_of_blue.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (923410000, 'REVOLVER', 1987,923412212,  NULL,39 ,105,'res/cds/revolver.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (923412444, 'NEVER MIND', 1991,923410000, NULL,40 ,105,'res/cds/never_mind.jpg');

INSERT into ITEM (item_id, title, publish_date,recommended_id, user_id, publisher_id, genre_id, cover_image)
VALUES (925678900, 'WHITE ALBULM', 1987,923412444, NULL, 40,105,'res/cds/white_albulm.jpg');

/*****BOOK*****/
/**************/

INSERT into BOOK(book_id,page_length)
VALUES(100234564, 199);

INSERT into BOOK(book_id,page_length)
VALUES( 102345358, 432);

INSERT into BOOK(book_id,page_length)
VALUES(105612888, 448);

INSERT into BOOK(book_id,page_length)
VALUES(105612222, 336);

INSERT into BOOK(book_id,page_length)
VALUES(105612223, 368);

INSERT into BOOK(book_id,page_length)
VALUES(103206989, 560);

INSERT into BOOK(book_id,page_length)
VALUES(107915623, 288);

INSERT into BOOK(book_id,page_length)
VALUES(108561347, 112);

INSERT into BOOK(book_id,page_length)
VALUES(105612093, 600);

INSERT into BOOK(book_id,page_length)
VALUES(104589032, 283);

/******MEDIA*******/
/*****************/

/*BLURAY*/
INSERT into MEDIA(media_id, runtime)
VALUES(205612089, 127);

INSERT into MEDIA(media_id,runtime)
VALUES(203402343, 118);

INSERT into MEDIA(media_id,runtime)
VALUES(203414443, 84);

INSERT into MEDIA(media_id,runtime)
VALUES(203477343, 115);

INSERT into MEDIA(media_id,runtime)
VALUES(205567343, 102);

INSERT into MEDIA(media_id,runtime)
VALUES(203486343, 178);

INSERT into MEDIA(media_id,runtime)
VALUES(203412343, 94);

INSERT into MEDIA(media_id,runtime)
VALUES(201023456, 112);

/*DVD*/
INSERT into MEDIA(media_id,runtime)
VALUES(305612890, 127);

INSERT into MEDIA(media_id,runtime)
VALUES(309012343, 115);

INSERT into MEDIA(media_id,runtime)
VALUES(309112343,120);

INSERT into MEDIA(media_id,runtime)
VALUES(303421443,100);

INSERT into MEDIA(media_id,runtime)
VALUES(300479543,112);

INSERT into MEDIA(media_id,runtime)
VALUES(308012343,146);

INSERT into MEDIA(media_id,runtime)
VALUES(307612343,93);

INSERT into MEDIA(media_id,runtime)
VALUES(302398881, 110);

/*CD*/
INSERT into MEDIA(media_id,runtime)
VALUES(924512343, 127);

INSERT into MEDIA(media_id,runtime)
VALUES(928012343, 115);

INSERT into MEDIA(media_id,runtime)
VALUES(911072343,120);

INSERT into MEDIA(media_id,runtime)
VALUES(923412541,100);

INSERT into MEDIA(media_id,runtime)
VALUES(923412212,112);

INSERT into MEDIA(media_id,runtime)
VALUES(923410000,146);

INSERT into MEDIA(media_id,runtime)
VALUES(923412444,93);

INSERT into MEDIA(media_id,runtime)
VALUES(925678900, 110);

/******AUTHOR*******/
/******************/

INSERT into AUTHOR(book_id,author_id)
VALUES(100234564,11);

INSERT into AUTHOR(book_id,author_id)
VALUES(102345358,11);

INSERT into AUTHOR(book_id,author_id)
VALUES(105612888,14);

INSERT into AUTHOR(book_id,author_id)
VALUES(105612222,13);

INSERT into AUTHOR(book_id,author_id)
VALUES(105612223,13);

INSERT into AUTHOR(book_id,author_id)
VALUES(103206989,18);

INSERT into AUTHOR(book_id,author_id)
VALUES(107915623,17);

INSERT into AUTHOR(book_id,author_id)
VALUES(108561347,16);

INSERT into AUTHOR(book_id,author_id)
VALUES(105612093,15);

INSERT into AUTHOR(book_id,author_id)
VALUES(104589032,15);

/******ARTIST***********/
/**********************/
INSERT into ARTIST(media_id, artist_id)
VALUES(924512343,32);

INSERT into ARTIST(media_id, artist_id)
VALUES(928012343,33);

INSERT into ARTIST(media_id, artist_id)
VALUES(911072343, 34);

INSERT into ARTIST(media_id, artist_id)
VALUES(923412541,35);

INSERT into ARTIST(media_id, artist_id)
VALUES(923412212,36 );

INSERT into ARTIST(media_id, artist_id)
VALUES(923410000,38);

INSERT into ARTIST(media_id, artist_id)
VALUES(923412444,37);

INSERT into ARTIST(media_id,artist_id)
VALUES(925678900,38);


/******CD**********/
/******************/
INSERT into CD(cd_id, num_of_tracks)
VALUES(924512343,11);

INSERT into CD(cd_id, num_of_tracks)
VALUES(928012343,10);

INSERT into CD(cd_id, num_of_tracks)
VALUES(911072343,23);

INSERT into CD(cd_id, num_of_tracks)
VALUES(923412541,10);

INSERT into CD(cd_id, num_of_tracks)
VALUES(923412212,5);

INSERT into CD(cd_id, num_of_tracks)
VALUES(923410000,14);

INSERT into CD(cd_id, num_of_tracks)
VALUES(923412444,12);

INSERT into CD(cd_id, num_of_tracks)
VALUES(925678900,13);

/*****DVD*******/
/**************/
INSERT into DVD(dvd_id)
VALUES(305612890);

INSERT into DVD(dvd_id)
VALUES(309012343);

INSERT into DVD(dvd_id)
VALUES(309112343);

INSERT into DVD(dvd_id)
VALUES(303421443);

INSERT into DVD(dvd_id)
VALUES(300479543);

INSERT into DVD(dvd_id)
VALUES(308012343);

INSERT into DVD(dvd_id)
VALUES(307612343);

INSERT into DVD(dvd_id)
VALUES(302398881);

/******BLURAY******/
/******************/
INSERT into BLURAY(bluray_id)
VALUES(205612089);

INSERT into BLURAY(bluray_id)
VALUES(203402343);

INSERT into BLURAY(bluray_id)
VALUES(203414443);

INSERT into BLURAY(bluray_id)
VALUES(203477343);

INSERT into BLURAY(bluray_id)
VALUES(205567343);

INSERT into BLURAY(bluray_id)
VALUES(203486343);

INSERT into BLURAY(bluray_id)
VALUES(203412343);

INSERT into BLURAY(bluray_id)
VALUES(201023456);


/*****PRODUCERDIRECTOR**/
/***********************/
INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(205612089,19);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(203402343,20);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(203414443,21);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(203477343,22);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(205567343,23);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(203486343,24);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(203412343,25);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(201023456,24);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(305612890,19);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(309012343,26);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(309112343,27);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(303421443,28);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(300479543,29);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(308012343,26);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(307612343,27);

INSERT into PRODUCERDIRECTOR(media_id,producerdirector_id)
VALUES(302398881,29);

/*******REVIEW*****/
/******************/

INSERT into REVIEW(review_num, date_review, text, item_id, user_id)
VALUES(1,'2009-07-01','Was good.',302398881, 1234267820);

INSERT into REVIEW(review_num, date_review, text,item_id, user_id)
VALUES(2,'2009-07-01','Was funny.',100234564, 1233447830);

INSERT into REVIEW(review_num, date_review, text,item_id, user_id)
VALUES(3,'2009-07-01','Was boring.',925678900,1234567891 );

INSERT into REVIEW(review_num, date_review, text,item_id, user_id)
VALUES(4,'2009-07-01','Was cool.',925678900,1374567830 );

INSERT into REVIEW(review_num, date_review, text,item_id, user_id)
VALUES(5,'2009-07-01','Was awesome.',205612089, 1290537830);

INSERT into REVIEW(review_num, date_review, text,item_id, user_id)
VALUES(6,'2009-07-01','Was silly.',307612343,1234567890);

INSERT into REVIEW(review_num, date_review, text,item_id, user_id)
VALUES(7,'2009-07-01','Was gross.',302398881,1234567891);

/******RATES*****/
/****************/

INSERT into RATES(item_id,user_id,rating)
VALUES(302398881, 1234267820, 5);

INSERT into RATES(item_id,user_id,rating)
VALUES(302398881,1234567891, 5);

INSERT into RATES(item_id,user_id,rating)
VALUES(302398881, 1233447830, 3);

INSERT into RATES(item_id,user_id,rating)
VALUES(302398881,1374567830, 5);

INSERT into RATES(item_id,user_id,rating)
VALUES(100234564, 1233447830, 5);

INSERT into RATES(item_id,user_id,rating)
VALUES(100234564,1234567891, 4);

INSERT into RATES(item_id,user_id,rating)
VALUES(925678900,1234567891, 1);

INSERT into RATES(item_id,user_id,rating)
VALUES(925678900, 1234267820, 3);

INSERT into RATES(item_id,user_id,rating)
VALUES(925678900,1374567830, 4);

INSERT into RATES(item_id,user_id,rating)
VALUES(205612089, 1290537830, 4);

INSERT into RATES(item_id,user_id,rating)
VALUES(307612343,1234567890, 2);

INSERT into RATES(item_id,user_id,rating)
VALUES(307612343,1234267820, 4);


/****WRITESREVIEW***/
/*******************/

INSERT into WRITESREVIEW(review_num, item_id, user_id)
VALUES(1,302398881, 1234267820);

INSERT into WRITESREVIEW(review_num, item_id, user_id)
VALUES(2,100234564, 1233447830);

INSERT into WRITESREVIEW(review_num, item_id, user_id)
VALUES(3,925678900,1234567891 );

INSERT into WRITESREVIEW(review_num, item_id, user_id)
VALUES(4,925678900,1374567830 );

INSERT into WRITESREVIEW(review_num, item_id, user_id)
VALUES(5,205612089, 1290537830);

INSERT into WRITESREVIEW(review_num, item_id, user_id)
VALUES(6,307612343,1234567890);

INSERT into WRITESREVIEW(review_num, item_id, user_id)
VALUES(7,302398881,1234567891);




