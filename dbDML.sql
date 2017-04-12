/*LIBUSERS*/
INSERT into ITEM (user_id, name, address)
VALUES (1234567890, "JOHN SMITH","12 COURT LANE, ARLINGTON, TX, 76103");

INSERT into ITEM (user_id, name, address)
VALUES (1234567891, "JOHN JAMES","15 MILDRED CIRCLE, ARLINGTON, TX, 76323");

INSERT into ITEM (user_id, name, address)
VALUES (1234267820, "KATE SMITH","12 COURT LANE, ARLINGTON, TX, 76103");

INSERT into ITEM (user_id, name, address)
VALUES (1254567830, "PARK KIM","189 ROYAL LANE, ARLINGTON, TX, 76133");

INSERT into ITEM (user_id, name, address)
VALUES (1274567830, "LEE KIM","179 HOUSTON STREET, ARLINGTON, TX, 76133");

INSERT into ITEM (user_id, name, address)
VALUES (1238567830, "SARAH HA","129 DALLAS CIRCLE, ARLINGTON, TX, 76121");

INSERT into ITEM (user_id, name, address)
VALUES (1290567830, "LUKE CERA","145 VICTORY STREET, ARLINGTON, TX, 76133");

INSERT into ITEM (user_id, name, address)
VALUES (1233567830, "RYAN GONAZLES","132 6TH STREET, ARLINGTON, TX, 76133");

INSERT into ITEM (user_id, name, address)
VALUES (1234566830, "MARIA CANALES","189 WALL COURT, ARLINGTON, TX, 76133");

INSERT into ITEM (user_id, name, address)
VALUES (1236567830, "HOA LI","159 RED LANE, ARLINGTON, TX, 76133");
/**********ITEMS*******************/
/*********************************/

/* BOOK ITEMS*/
INSERT into ITEM (item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985612903, "CARRIE", 1974, 985612904, NULL, 190234789, 201034098);

INSERT into ITEM (item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985612904, "END OF WATCH", 2011, 985612903, NULL, 190234789, 201034098);

INSERT into ITEM (item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985612888, "JURASSIC PARK", 1990, 985612910, NULL, 985612889, 201034100);

INSERT into ITEM (item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985612222, "HARRY POTTER AND THE SORCERER'S STONE", 1997, 985612223, NULL, 290876544, 124536789);

INSERT into ITEM(item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985612223, "HARRY POTTER AND THE CHAMER OF SECRETS", 1998, 985612222, NULL,290876544, 124536789);

INSERT into ITEM(item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (103206989, "THE GIRL", 1999, 985612222, NULL,290876544, 124536789);

INSERT into ITEM(item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985615623, "Fast Food Nation: The Dark Side of the All-American Meal", 2001, 100000000, NULL,290876544, 124536789);

INSERT into ITEM(item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985618573, "Food Rules: An Eater's Manual", 2009, 985612222, NULL,290876544, 124536789);

INSERT into ITEM(item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985618293, "The Wonderworld of Science", 1950, 985612222, NULL,290876544, 124536789);

INSERT into ITEM(item_id, title, publish_date, recommended_id, user_id, publisher_id,genre_id)
VALUES (134521232, "Modern Science", 1960, 985618293, NULL, 123459087, 123098458);

INSERT into ITEM(item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (192345356, "Chemistry Today", 1970, 134521232, NULL, 123459087, 123098458);

/*BLURAY ITEMS*/
INSERT into ITEM (item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985612889, "JURASSIC PARK", 2013, 985612910, NULL, 985612800, 201034100);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "CAROL", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "JAMES AND THE GIANT PEACH", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "RATATOUILLE", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "CLERKS", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "PULP FICTION", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "FOOD,INC", 2015, 123498762, NULL, 902843765, 123098432);

/*DVD ITEMS*/
INSERT into ITEM (item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (985612890, "JURRASIC PARK", 2000, 985612910, NULL, 985612800, 201034100);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "CHEF", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "DELICATESSEN", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "WINTER'S BONE", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "THE CONJURING", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "THE SHINNING", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "THE WITCH", 2015, 123498762, NULL, 902843765, 123098432);

/*CD ITEMS*/
INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "25", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "25", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "25", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "25", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "25", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "25", 2015, 123498762, NULL, 902843765, 123098432);

INSERT into ITEM( item_id, title, publish_date, recommended_id, user_id, publisher_id, genre_id)
VALUES (923412343, "25", 2015, 123498762, NULL, 902843765, 123098432);

