CREATE TABLE mapposition (
	id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	latitude float8 NULL,
	longetude float8 NULL,
	CONSTRAINT localizacao_pkey PRIMARY KEY (id)
);

CREATE TABLE restaurant (
	id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	name varchar(50) NULL,
	mapposition_id int8 NOT NULL,
	CONSTRAINT restaurant_pkey PRIMARY KEY (id)
);

ALTER TABLE restaurant ADD CONSTRAINT res_loc FOREIGN KEY (mapposition_id) REFERENCES mapposition(id);

CREATE TABLE dish (
	id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	description varchar(200) NULL,
	name varchar(50) NULL,
	price numeric(19,2) NOT NULL,
	restaurant_id int8 NOT NULL
);

ALTER TABLE dish ADD CONSTRAINT dish_rest FOREIGN KEY (restaurant_id) REFERENCES restaurant(id);


CREATE TABLE dish_client (
	dish int,
	client varchar(200)
);

INSERT INTO mapposition (id, latitude, longetude) VALUES(1000, -35.817759, -37.836959);

INSERT INTO restaurant (id, mapposition_id, name) VALUES(123, 1000, 'GaHan');

INSERT INTO dish
(id, name, description, restaurant_id, price)
VALUES(1234, 'Bacon + Omelete', 'Great for brunch', 123, 3.99);

INSERT INTO dish
(id, name, description, restaurant_id, price)
VALUES(1235, 'Fish Fried', 'Scallops from Maritimes', 123, 199.99);