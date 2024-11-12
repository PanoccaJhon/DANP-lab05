CREATE TABLE IF NOT EXISTS works (
	id serial PRIMARY KEY,
	title varchar(255) NOT NULL,
	exhibition_id integer NOT NULL,
	technique varchar(255) NOT NULL,
	description text NOT NULL,
	dimension varchar(255) NOT NULL,
	year integer NOT NULL,
	image varchar(255) NOT NULL,
	position_x numeric NOT NULL,
	position_y numeric NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL,
	lastname varchar(50) NOT NULL,
	specialty varchar(50) NOT NULL,
	photo varchar(255) NOT NULL,
	biography text NOT NULL,
	awards text NOT NULL
);

CREATE TABLE IF NOT EXISTS galleries (
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL,
	description text NOT NULL
);

CREATE TABLE IF NOT EXISTS exhibitions (
	id serial PRIMARY KEY,
	name varchar(200) NOT NULL,
	gallery_id integer NOT NULL,
	artist_id integer NOT NULL,
	period varchar(100) NOT NULL,
	description_text text NOT NULL,
	description_audio varchar(255) NOT NULL,
	state boolean NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
	id serial PRIMARY KEY,
	name varchar(255) NOT NULL,
	email varchar(255) NOT NULL UNIQUE,
	phone varchar(50) NOT NULL,
	password varchar(255) NOT NULL,
	photo_url varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS user_preferences (
	id serial PRIMARY KEY,
	user_id integer NOT NULL,
	dark_theme boolean NOT NULL,
	language varchar(255) NOT NULL
);

-- Definición de claves foráneas
ALTER TABLE works ADD CONSTRAINT works_exhibition_fk FOREIGN KEY (exhibition_id) REFERENCES exhibitions(id);
ALTER TABLE exhibitions ADD CONSTRAINT exhibitions_gallery_fk FOREIGN KEY (gallery_id) REFERENCES galleries(id);
ALTER TABLE exhibitions ADD CONSTRAINT exhibitions_artist_fk FOREIGN KEY (artist_id) REFERENCES artists(id);
ALTER TABLE user_preferences ADD CONSTRAINT user_preferences_user_fk FOREIGN KEY (user_id) REFERENCES users(id);
