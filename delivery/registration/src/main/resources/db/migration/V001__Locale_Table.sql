CREATE TABLE public.mapposition (
	id int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	latitude float8 NULL,
	longetude float8 NULL,
	CONSTRAINT mapposition_pkey PRIMARY KEY (id)
);