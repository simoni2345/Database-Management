DROP TABLE if exists Persons;
DROP TABLE if exists Actors;
DROP TABLE if exists Directors;
DROP TABLE if exists Movies;
DROP TABLE if exists Actors_Movies;
DROP TABLE if exists Directors_Movies;

CREATE TABLE Persons(
	pid      	serial not null primary key,
	first_name	varchar(40) not null,
	last_name	varchar(40) not null,
	address		varchar(80)
);

CREATE TABLE Actors (
	aid  int not null primary key references Persons(pid),
	last_name varchar(40),
	birth_date varchar(40) not null,
	eye_color varchar(40),
	hair_color varchar(20),
	height_inches int,
	weight_lbs int,
	actors_guild_anniversary date,
	favorite_color varchar(20),
	spouse_name varchar(60)
);

CREATE TABLE Directors (
	did int not null primary key references Persons(pid),
	last_name varchar(40),
	film_school_attended varchar(50),
	directors_guild_anniversary date,
	spouse_name varchar(40),
	fav_lens_maker varchar(30)
);

CREATE TABLE Movies (
	mid serial not null primary key,
	movie_name varchar(80),
	year_released int,
	MPAA_Rating text,
	domestic_box_office_sales_usd money,
	foreign_box_office_sales_usd money,
	dvd_bluray_sales money
);

CREATE TABLE Actors_Movies (
	aid int not null references Actors(aid),
	mid int not null references Movies(mid),
	last_name varchar(40) not null,
	movie_name varchar(40),
	primary key(aid,mid)
);

CREATE TABLE Directors_Movies (
	did int not null references Directors(did),
	mid int not null references Movies(mid),
	last_name varchar(40),
	movie_name varchar(40),
	primary key(did,mid)
);

-- Main Table Data (Persons)
insert into Persons (first_name, last_name, address)
	values ('Sean', 'Connery', '2000 Star Avenue, Los Angeles, CA');
insert into Persons (first_name, last_name, address)
	values ('Matt ', 'Damon', 'The Spanky Taylor Company 3727 Magnolia Suit CA');
insert into Persons (first_name, last_name, address)
	values ('Tom', 'Cruise', '1111 Calle Vista Dr, Beverly Hills, CA 90210');
insert into Persons (first_name, last_name, address)
	values ('Tom', 'Hanks', '1994 Gump Street, Santa Monica, CA');
insert into Persons (first_name, last_name, address)
	values ('Brad', 'Pitt', '32316 Pacific Coast Highway Malibu, CA');
insert into Persons (first_name, last_name, address)
	values ('Ridley', 'Scott', '634 La Peer Dr West Hollywood, CA');
insert into Persons (first_name, last_name, address)
	values ('Neil', 'Jordan', 'Waverly House Noel Street Lonsin W1F');
insert into Persons (first_name, last_name, address)
	values ('Guy', 'Hamilton', '225 Violet Ct Saxonburg, Pennsylvania 16056'); 
insert into Persons (first_name, last_name, address)
	values ('Robert', 'Zemeckis', '1569 E Valley Rd, Montecito, CA 93108');

SELECT * FROM Persons;

-- Actors --
insert into Actors (aid, last_name, birth_date, hair_color, eye_color, height_inches, weight_lbs, actors_guild_anniversary, favorite_color, spouse_name)
	values (1, 'Connery', '8/25/1931', 'brown', 'green', 74, 180, '5/11/1980', 'Green', 'Samantha');
insert into Actors (aid, last_name, birth_date, hair_color, eye_color, height_inches, weight_lbs, actors_guild_anniversary, favorite_color, spouse_name)
	values (2, 'Damon', '10/08/1970', 'brown', 'blue', 70, 175, '10/06/1990', 'White', 'Angela');
insert into Actors (aid, last_name, birth_date, hair_color, eye_color, height_inches, weight_lbs, actors_guild_anniversary, favorite_color, spouse_name)
	values (3, 'Cruise', '7/3/1962', 'dark brown', 'light blue', 72, 165, '04/16/1996', 'Black', 'Courtney');
insert into Actors (aid, last_name, birth_date, hair_color, eye_color, height_inches, weight_lbs, actors_guild_anniversary, favorite_color, spouse_name)
	values (4, 'Hanks', '7/9/1953', 'brown', 'blue', 70, 175, '01/23/74', 'Blue', 'Alexis');
insert into Actors (aid, last_name, birth_date, hair_color, eye_color, height_inches, weight_lbs, actors_guild_anniversary, favorite_color, spouse_name)
	values (5, 'Pitt', '10/18/1963', 'brown', 'blue', 70, 175, '08/29/1995', 'Orange', 'Rebecca');
      
-- SELECT * FROM Actors;

-- Directors --
insert into Directors (did, last_name, film_school_attended, directors_guild_anniversary, spouse_name, fav_lens_maker)
	values (1, 'Hamilton', 'New York Film Academy', '02/13/1962', 'Elizabeth', 'Zeiss');
insert into Directors (did, last_name, film_school_attended, directors_guild_anniversary, spouse_name, fav_lens_maker)
	values (2, 'Scott', 'American Film Institute', '04/30/1983', 'Meghan' , 'Olympus');
insert into Directors (did, last_name, film_school_attended, directors_guild_anniversary, spouse_name, fav_lens_maker)
	values (3, 'Jordan', 'Boston University School of Arts', '08/03/1987', 'Katie', 'Pentax');
insert into Directors (did, last_name, film_school_attended, directors_guild_anniversary, spouse_name, fav_lens_maker)
	values (4, 'Zemeckis', 'London College of Music', '10/30/1990', 'Caroline', 'Olympus');

-- SELECT * FROM Directors;

-- Movies --
insert into Movies (movie_name, year_released, MPAA_Rating, domestic_box_office_sales_usd, foreign_box_office_sales_usd, dvd_bluray_sales)
	values ('Forrest Gump', 1994, 'PG-13', 64000000, 15000000, 8679305);
insert into Movies (movie_name, year_released, MPAA_Rating, domestic_box_office_sales_usd, foreign_box_office_sales_usd, dvd_bluray_sales)
	values ('Goldfinger', 1964, 'GP', 9000000, 15000000, 239386);
insert into Movies (movie_name, year_released, MPAA_Rating, domestic_box_office_sales_usd, foreign_box_office_sales_usd, dvd_bluray_sales)
	values ('Interview with the Vampire', 1994, 'R', 47000000, 52000000, 4369305);
insert into Movies (movie_name, year_released, MPAA_Rating, domestic_box_office_sales_usd, foreign_box_office_sales_usd, dvd_bluray_sales)
	values ('The Martian', 2015, 'PG-13', 37000000, 63000000, 9833861);

-- SELECT * FROM Movies;

insert into Actors_Movies (aid, mid, last_name, movie_name) values (4, 1, 'Hanks', 'Forrest Gump');
insert into Actors_Movies (aid, mid, last_name, movie_name) values (1, 2, 'Connery', 'Goldfinger');
insert into Actors_Movies (aid, mid, last_name, movie_name) values (3, 3, 'Cruise', 'Interview with the Vampire');
insert into Actors_Movies (aid, mid, last_name, movie_name) values (5, 3, 'Pitt', 'Interview with the Vampire');
insert into Actors_Movies (aid, mid, last_name, movie_name) values (2, 4, 'Damon', 'The Martian');

-- SELECT * FROM Actors_Movies;

insert into Directors_Movies (did, mid, last_name, movie_name) values (4, 1, 'Zemeckis', 'Forrest Gump');
insert into Directors_Movies (did, mid, last_name, movie_name) values (1, 2, 'Hamilton', 'Goldfinger');
insert into Directors_Movies (did, mid, last_name, movie_name) values (3, 3, 'Jordan', 'Interview with the Vampire');
insert into Directors_Movies (did, mid, last_name, movie_name) values (2, 4, 'Scott', 'The Martian');

-- SELECT * FROM Directors_Movies;

-- Director(s) with whom Sean Connery has worked:

SELECT D.* 
FROM Directors_Movies D INNER JOIN Actors_Movies A ON D.movie_name = A.movie_name 
WHERE A.last_name = 'Connery'
;
