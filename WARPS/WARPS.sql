CREATE DATABASE WARPS;

CREATE TABLE Food_Category (
	Category_name	TEXT NOT NULL,
	CategoryID	INTEGER NOT NULL,
	PRIMARY KEY(CategoryID)
);
CREATE TABLE Food (
	Food_name	TEXT NOT NULL,
	FoodID	INTEGER NOT NULL,
	CategoryID	INTEGER,
	PRIMARY KEY(FoodID)
);
INSERT INTO Food_Category VALUES ('Appetizers',1);
INSERT INTO Food_Category VALUES ('Soup/Salad',2);
INSERT INTO Food_Category VALUES ('Fried Rice',3);
INSERT INTO Food_Category VALUES ('Egg Foo Young',4);
INSERT INTO Food_Category VALUES ('Flamingo Special Dinner',5);
INSERT INTO Food_Category VALUES ('Szechuan Special Dinner',6);
INSERT INTO Food_Category VALUES ('Peking Special DInner',7);
INSERT INTO Food_Category VALUES ('Side Order',8);
INSERT INTO Food_Category VALUES ('Noodle',9);
INSERT INTO Food_Category VALUES ('Chicken',10);
INSERT INTO Food_Category VALUES ('Pork',11);
INSERT INTO Food_Category VALUES ('Beef',12);
INSERT INTO Food_Category VALUES ('Shrimp',13);
INSERT INTO Food_Category VALUES ('Seafood/Lobster',14);
INSERT INTO Food_Category VALUES ('Tofu/Vegetable',15);
INSERT INTO Food_Category VALUES ('Chef''s Special',16);
INSERT INTO Food_Category VALUES ('Soft Drink',17);
INSERT INTO Food VALUES ('Egg Roll',1,1);
INSERT INTO Food VALUES ('Crab Puff (8)',2,1);
INSERT INTO Food VALUES ('Fried Shrimp (8)',3,1);
INSERT INTO Food VALUES ('Chicken WIngs (10)',4,1);
INSERT INTO Food VALUES ('Beef Skewer (6)',5,1);
INSERT INTO Food VALUES ('Pu Pu Platter (For 2)',6,1);
INSERT INTO Food VALUES ('Pu Pu Platter',7,1);
INSERT INTO Food VALUES ('Spring Roll (2)',8,1);
INSERT INTO Food VALUES ('Fried Wonton (10)',9,1);
INSERT INTO Food VALUES ('BBQ Ribs',10,1);
INSERT INTO Food VALUES ('Roast Pork',11,1);
INSERT INTO Food VALUES ('Dumpling (10)',12,1);
INSERT INTO Food VALUES ('Chicken Lettuce Wrap',13,1);