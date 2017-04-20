CREATE TABLE IF NOT EXISTS People (
people_id SERIAL NOT NULL PRIMARY KEY, 
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
phone_number char(15) NOT NULL,
emergency_contact_name VARCHAR(100) NOT NULL,
emergency_contact_phone char(15) NOT NULL
); 

/*
Functional Dependencies:
people_id --> first_name, last_name, phone_number, emergency_contact_name, emergency_contact_phone
*/

INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone )
values ('Alan' , 'Labouseur', 8456728902,  'Tien', 8796783672);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Bob' , 'Mendez', 7682678290, 'Alessia', 9167882678 );
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Grace' , 'Helbig', 2278993678, 'Kiana', 2987890825);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Emily' , 'Farell', 7256789256, 'Sammy', 7892456728);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Josiah' , 'Conway', 4567892678, 'Manny', 8926789035);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Matt' , 'Germano', 6789997829, 'Molly', 8678897826);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Samantha' , 'Payne', 3890786278, 'Zack', 5627890267);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('David' , 'Borak', 3678929036, 'Robert', 6708902836);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Nathaniel' , 'Vanderbilt', 4567892568, 'Darcy', 7835678920);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Blaire' , 'Wardolf', 89034567829, 'Nat', 4785619036);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Dan' , 'Humphrey', 3787828378, 'Aaron', 9278902847);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Karen' , 'Fillipeli', 5603892728, 'Tara', 8934567836);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Pam' , 'Beasley', 3678926738,'Elsa', 5693782256);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Jim' , 'Halpert', 7356784937, 'Charlie', 3490896678);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Dwight' , 'Schrute', 2126785567, 'Bryant', 9125678889);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Jeff' , 'Damon', 8452406178, 'Gary', 7467778926);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Rupert' , 'Fernandez', 8452873345, 'Elsa', 7467824490);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Hannah' , 'Marin', 9087895678, 'Ashley', 6458890345);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Wassila' , 'George', 7689906234, 'Elliot', 8785563345);
INSERT INTO People (first_name , last_name, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Katie' , 'Zulets', 9236678892, 'Diana', 7724456666);

SELECT * FROM People; 

CREATE TABLE IF NOT EXISTS members (
member_id SERIAL NOT NULL PRIMARY KEY,
people_id INT references people(people_id),
start_date date NOT NULL
);

/*
Functional Dependencies:
member_id --> start_date 
*/

INSERT INTO members (people_id , start_date)
values (2, '2014-08-12');
INSERT INTO members (people_id , start_date)
values (3, '2017-01-01');
INSERT INTO members (people_id , start_date)
values (5, '2015-04-09');
INSERT INTO members (people_id , start_date)
values (6, '2014-08-09');
INSERT INTO members (people_id , start_date)
values (8, '2015-10-05');
INSERT INTO members (people_id , start_date)
values (9, '2014-07-17');
INSERT INTO members (people_id , start_date)
values (10, '2015-02-09');
INSERT INTO members (people_id , start_date)
values (12, '2017-01-23');
INSERT INTO members (people_id , start_date)
values (13, '2016-06-05');
INSERT INTO members (people_id , start_date)
values (14, '2014-11-04');
INSERT INTO members (people_id , start_date)
values (15, '2014-10-05');
INSERT INTO members (people_id , start_date)
values (16, '2016-03-19');
INSERT INTO members (people_id , start_date)
values (17, '2015-10-05');

SELECT * FROM members;

CREATE TABLE IF NOT EXISTS members_info (
member_id INT references members(member_id),
monthly_fee_usd INT NOT NULL,
CHECK (monthly_fee_usd >= 20),
membership_expiration date NOT NULL
);

/*
Functional Dependencies:
member_id --> monthly_fee_usd, membership_expiration
*/

INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (1, 35, '2015-08-12');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (2, 30, '2018-01-01');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (3, 40, '2016-04-09');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (4, 40, '2015-08-09');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (5, 35, '2016-10-05');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (6, 30, '2015-07-17');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (7, 35, '2016-02-09');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (8, 45, '2018-01-23');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (9, 45, '2017-06-05');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (10, 30, '2015-11-04');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (11, 30, '2015-10-05');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (12, 40, '2017-03-19');
INSERT INTO members_info (member_id, monthly_fee_usd, membership_expiration)
VALUES (13, 35, '2016-10-05');

SELECT * FROM members_info; 

CREATE TABLE IF NOT EXISTS instructors (
instructor_id SERIAL NOT NULL PRIMARY KEY,
people_id INT references people(people_id),
start_date date NOT NULL
);

/*
Functional Dependencies:
instructor_id --> start_date
*/


INSERT INTO instructors (people_id , start_date)
values (1, '2014-11-12');
INSERT INTO instructors (people_id , start_date)
values (4, '2016-08-06');
INSERT INTO instructors (people_id , start_date)
values (7, '2015-04-07');
INSERT INTO instructors (people_id , start_date)
values (11, '2014-10-18');
INSERT INTO instructors (people_id , start_date)
values (18, '2015-05-16');
INSERT INTO instructors (people_id , start_date)
values (19, '2014-09-05');
INSERT INTO instructors (people_id , start_date)
values (20, '2015-01-01');

SELECT * FROM instructors;

CREATE TABLE IF NOT EXISTS instructors_info (
instructor_id INT references instructors(instructor_id),
monthly_salary_usd INT NOT NULL,
CHECK (monthly_salary_usd >= 250),
contract_end_date date NOT NULL
);

/*
Functional Dependencies:
people_id --> monthly_salary_usd, contract_end_date
*/

INSERT INTO instructors_info (instructor_id, monthly_salary_usd, contract_end_date)
VALUES (1, 300, '2015-11-12'); 
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, contract_end_date)
VALUES (2, 350, '2017-08-06'); 
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, contract_end_date)
VALUES (3, 350, '2016-04-07');
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, contract_end_date)
VALUES (4, 300, '2015-10-18'); 
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, contract_end_date)
VALUES (5, 350, '2016-05-16');
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, contract_end_date)
VALUES (6, 300, '2015-09-05');   
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, contract_end_date)
VALUES (7, 350, '2016-01-01'); 

SELECT * FROM instructors_info; 

CREATE TABLE IF NOT EXISTS Season (
season_id SERIAL NOT NULL PRIMARY KEY,
season_name varchar(100) NOT NULL,
start_date date NOT NULL, 
end_date date NOT NULL
);

INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Spring2014', '01-01-2014', '05-01-2015');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Summer2014', '05-01-2014', '08-25-2014');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Fall2014', '01-09-2015', '12-23-2014');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Spring2015', '01-01-2015', '05-01-2015');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Summer2015', '05-10-2015', '08-25-2016');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Fall2015', '09-01-2015', '12-23-2015');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Spring2016', '01-01-2016', '05-01-2016');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Summer2016', '05-10-2016', '08-25-2016');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Fall2016', '09-01-2016', '12-22-2016');
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Spring2017', '01-01-2017', '05-01-2017');

SELECT * FROM Season; 


CREATE TABLE IF NOT EXISTS existing_clubs (
club_id SERIAL NOT NULL PRIMARY KEY,
club_name VARCHAR(255) NOT NULL
); 

INSERT INTO existing_clubs (club_id, club_name)
VALUES (1, 'Swimming');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (2, 'Basketball');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (3, 'Soccer');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (4, 'Drawing');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (5, 'Table Tennis');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (6, 'Badminton');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (7, 'Tennis');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (8, 'Hip Hop Dance');

SELECT * FROM existing_clubs;

CREATE TABLE IF NOT EXISTS instructors_clubs (
ic_id serial NOT NULL PRIMARY KEY,
instructor_id INT REFERENCES instructors(instructor_id) NOT NULL,
club_id INT REFERENCES existing_clubs(club_id) NOT NULL, 
season_id INT REFERENCES Season(season_id) NOT NULL
); 

INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (1, 3, 1);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (2, 1, 4);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (3, 4, 2);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (4, 8, 5);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (5, 7, 3);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (6, 2, 6);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (7, 8, 10);

SELECT * FROM instructors_clubs; 

CREATE TABLE IF NOT EXISTS members_clubs (
mc_id serial NOT NULL PRIMARY KEY,
member_id INT REFERENCES members(member_id) NOT NULL,
club_id INT REFERENCES existing_clubs(club_id) NOT NULL, 
season_id INT REFERENCES Season(season_id) NOT NULL
);


INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (1, 3, 4); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (2, 1, 1); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (3, 4, 6); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (4, 2, 6); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (5, 3, 5); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (6, 6, 5); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (7, 5, 3); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (8, 8, 10); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (9, 7, 7);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (10, 1, 5);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (11, 2, 2);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (12, 8, 10);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (13, 5, 5);

SELECT * FROM members_clubs; 

DROP VIEW IF EXISTS ClubsThisSeason;
CREATE VIEW ClubsThisSeason AS
SELECT distinct club_name 
FROM existing_clubs, members_clubs, Season
WHERE existing_clubs.club_id = members_clubs.club_id
AND members_clubs.season_id = season.season_id
AND NOW() > season.start_date
AND NOW() < season.end_date;

SELECT * FROM ClubsThisSeason;

SELECT * FROM season; 

CREATE TABLE IF NOT EXISTS club_meetings(
meeting_id SERIAL NOT NULL PRIMARY KEY,
club_id INT REFERENCES existing_clubs(club_id) NOT NULL,
start_time timestamp with time zone NOT NULL,
description VARCHAR(255)
);

INSERT INTO club_meetings (club_id, start_time, description)
VALUES (2, '2014-09-01', 'Competition Details');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (4, '2015-06-01', 'Art Competition Results');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (5, '2016-11-02', 'Choosing Partners');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (1, '2017-01-10', 'Under 15 Race details');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (7, '2016-12-01', 'Upcoming Tournament Details');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (8, '2015-03-24', 'Routine Practice Deatils');

SELECT * FROM club_meetings;

CREATE TABLE IF NOT EXISTS club_events (
event_id SERIAL NOT NULL PRIMARY KEY,
club_id INT REFERENCES existing_clubs(club_id) NOT NULL,
start_time TIMESTAMP with time zone NOT NULL,
event_title VARCHAR(255),
description VARCHAR(255)
); 

INSERT INTO club_events (club_id, start_time, event_title, description)
VALUES (8, '2016-11-23 19:00:00', 'Ball 2016', 'A formal ball for all the members of the Hip Hop Dance Group');
INSERT INTO club_events (club_id, start_time, event_title, description)
VALUES (4, '2017-01-23 17:00:00', 'Appreciation Day', 'Appreciating Peer Work');
INSERT INTO club_events (club_id, start_time, event_title, description)
VALUES (1, '2015-08-18 15:30:00', 'FreeStyle 100m', 'Race');
INSERT INTO club_events (club_id, start_time, event_title, description)
VALUES (2, '2014-10-03 09:00:00', 'Boys Tournament', 'In-house Tournament Boys');
INSERT INTO club_events (club_id, start_time, event_title, description)
VALUES (6, '2016-05-17 16:00:00', 'Meet and Greet', NULL); 

SELECT * FROM club_events;

CREATE TABLE IF NOT EXISTS meeting_attendances (
meeting_id INT REFERENCES club_meetings(meeting_id) NOT NULL,
member_id INT REFERENCES members(member_id) NOT NULL,
PRIMARY KEY (meeting_id, member_id)
);

INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (1, 4);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (1, 11);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (2, 3);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (3, 7);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (3, 13);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (4, 2);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (5, 9);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (6, 8);

SELECT * FROM meeting_attendances;

CREATE TABLE IF NOT EXISTS event_attendances (
event_id INT REFERENCES club_events(event_id) NOT NULL,
member_id INT REFERENCES members(member_id) NOT NULL,
primary key (event_id, member_id)
); 

INSERT INTO event_attendances (event_id, member_id)
VALUES (1, 8);
INSERT INTO event_attendances (event_id, member_id)
VALUES (1, 12);
INSERT INTO event_attendances (event_id, member_id)
VALUES (2, 3);
INSERT INTO event_attendances (event_id, member_id)
VALUES (3, 2);
INSERT INTO event_attendances (event_id, member_id)
VALUES (3, 10);
INSERT INTO event_attendances (event_id, member_id)
VALUES (4, 4);
INSERT INTO event_attendances (event_id, member_id)
VALUES (4, 11);
INSERT INTO event_attendances (event_id, member_id)
VALUES (5, 6);

SELECT * FROM event_attendances; 
