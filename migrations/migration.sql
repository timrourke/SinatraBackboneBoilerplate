CREATE DATABASE sinatra_backbone_boilerplate;

\c sinatra_backbone_boilerplate;

CREATE TABLE instagram (
	id SERIAL PRIMARY KEY,
	username VARCHAR(255),
	post VARCHAR(255),
	description VARCHAR(255),
	hashtags VARCHAR(255)
);
