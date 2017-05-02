-- A.C.O Database

CREATE TYPE gen AS ENUM ('f', 'm');
CREATE TABLE IF NOT EXISTS People (
people_id SERIAL NOT NULL PRIMARY KEY, 
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
gender gen, 
birth_date DATE NOT NULL,
phone_number char(15) NOT NULL,
emergency_contact_name VARCHAR(100) NOT NULL,
emergency_contact_phone char(15) NOT NULL
); 


INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone )
values ('Alan' , 'Labouseur', 'm', '1987-01-23', 8456728902,  'Tien', 8796783672);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Bob' , 'Mendez', 'm', '2001-03-27', 7682678290, 'Alessia', 9167882678 );
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Grace' , 'Helbig', 'f', '1997-01-24', 2278993678, 'Kiana', 2987890825);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Emily' , 'Farell', 'f', '2000-01-24', 7256789256, 'Sammy', 7892456728);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Josiah' , 'Conway', 'm', '1994-02-04', 4567892678, 'Manny', 8926789035);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Matt' , 'Germano', 'm', '1992-04-15', 6789997829, 'Molly', 8678897826);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Samantha' , 'Payne', 'f', '2002-03-16', 3890786278, 'Zack', 5627890267);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('David' , 'Borak', 'm', '1989-10-20', 3678929036, 'Robert', 6708902836);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Nathaniel' , 'Vanderbilt', 'm', '1994-05-30', 4567892568, 'Darcy', 7835678920);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Blaire' , 'Wardolf', 'f', '2001-11-19', 89034567829, 'Nat', 4785619036);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Dan' , 'Humphrey', 'm', '1997-06-18', 3787828378, 'Aaron', 9278902847);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Karen' , 'Fillipeli', 'f', '1995-09-14', 5603892728, 'Tara', 8934567836);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Pam' , 'Beasley', 'f', '2002-08-12', 3678926738,'Elsa', 5693782256);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Jim' , 'Halpert', 'm', '1998-10-26', 7356784937, 'Charlie', 3490896678);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Dwight' , 'Schrute', 'm', '1991-07-21', 2126785567, 'Bryant', 9125678889);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Jeff' , 'Damon', 'm', '1995-12-18', 8452406178, 'Gary', 7467778926);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Rupert' , 'Fernandez', 'm', '1999-07-05', 8452873345, 'Elsa', 7467824490);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Hannah' , 'Marin', 'f', '1996-09-01', 9087895678, 'Ashley', 6458890345);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Wassila' , 'George', 'f', '1997-01-24', 7689906234, 'Elliot', 8785563345);
INSERT INTO People (first_name , last_name, gender, birth_date, phone_number, emergency_contact_name, emergency_contact_phone)
values ('Katie' , 'Zulets', 'f', '1998-01-29', 9236678892, 'Diana', 7724456666);

-- SELECT*FROM People;

CREATE TABLE IF NOT EXISTS members (
member_id INT references people(people_id) PRIMARY KEY,
start_date date NOT NULL
);


INSERT INTO members (member_id , start_date)
values (2, '2014-08-12');
INSERT INTO members (member_id , start_date)
values (3, '2017-01-01');
INSERT INTO members (member_id , start_date)
values (5, '2015-04-09');
INSERT INTO members (member_id , start_date)
values (6, '2014-08-09');
INSERT INTO members (member_id , start_date)
values (8, '2015-10-05');
INSERT INTO members (member_id , start_date)
values (9, '2014-07-17');
INSERT INTO members (member_id , start_date)
values (10, '2015-02-09');
INSERT INTO members (member_id , start_date)
values (12, '2017-01-23');
INSERT INTO members (member_id , start_date)
values (13, '2016-06-05');
INSERT INTO members (member_id , start_date)
values (14, '2014-11-04');
INSERT INTO members (member_id , start_date)
values (15, '2014-10-05');
INSERT INTO members (member_id , start_date)
values (16, '2016-03-19');
INSERT INTO members (member_id , start_date)
values (17, '2015-10-05');

-- SELECT * FROM members;


CREATE TYPE payment AS ENUM ('credit', 'debit', 'cash');
CREATE TABLE IF NOT EXISTS members_info (
member_id INT references members(member_id),
monthly_fee_usd money NOT NULL,
payment_method payment, 
CHECK (monthly_fee_usd > '20'),
membership_expiration date NOT NULL
);

INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (2, 199, 'credit', '2015-08-12');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (3, 189, 'credit', '2018-01-01');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (5, 199, 'cash', '2016-04-09');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (6, 199, 'debit', '2015-08-09');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (8, 199, 'cash', '2016-10-05');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (9, 189, 'credit', '2015-07-17');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (10, 199, 'debit', '2016-02-09');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (12, 189, 'cash', '2018-01-23');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (13, 189, 'credit', '2017-06-05');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (14, 179, 'debit', '2015-11-04');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (15, 199, 'credit', '2015-10-05');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (16, 199, 'credit', '2017-03-19');
INSERT INTO members_info (member_id, monthly_fee_usd, payment_method, membership_expiration)
VALUES (17, 199, 'cash', '2016-10-05');

-- SELECT * FROM members_info; 

CREATE TABLE IF NOT EXISTS instructors (
instructor_id INT references people(people_id) PRIMARY KEY,
start_date date NOT NULL
);

INSERT INTO instructors (instructor_id , start_date)
values (1, '2014-11-12');
INSERT INTO instructors (instructor_id , start_date)
values (4, '2016-08-06');
INSERT INTO instructors (instructor_id , start_date)
values (7, '2015-04-07');
INSERT INTO instructors (instructor_id , start_date)
values (11, '2014-10-18');
INSERT INTO instructors (instructor_id , start_date)
values (18, '2015-05-16');
INSERT INTO instructors (instructor_id , start_date)
values (19, '2014-09-05');
INSERT INTO instructors (instructor_id , start_date)
values (20, '2015-01-01');

-- SELECT* FROM instructors;


CREATE TYPE payment AS ENUM ('credit', 'debit', 'cash');
CREATE TABLE IF NOT EXISTS instructors_info (
instructor_id INT references instructors(instructor_id),
monthly_salary_usd money NOT NULL,
CHECK (monthly_salary_usd >= '250'),
payment_method payment, 
contract_end_date date NOT NULL
);

INSERT INTO instructors_info (instructor_id, monthly_salary_usd, payment_method, contract_end_date)
VALUES (1, 300, 'credit', '2015-11-12'); 
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, payment_method, contract_end_date)
VALUES (4, 350, 'debit', '2017-08-06'); 
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, payment_method, contract_end_date)
VALUES (7, 350, 'credit', '2016-04-07');
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, payment_method, contract_end_date)
VALUES (11, 300, 'cash', '2015-10-18'); 
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, payment_method, contract_end_date)
VALUES (18, 350, 'debit', '2016-05-16');
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, payment_method, contract_end_date)
VALUES (19, 300, 'debit', '2015-09-05');   
INSERT INTO instructors_info (instructor_id, monthly_salary_usd, payment_method, contract_end_date)
VALUES (20, 350, 'credit', '2016-01-01'); 

-- SELECT* FROM instructors_info;

CREATE TABLE IF NOT EXISTS Season (
season_id SERIAL NOT NULL PRIMARY KEY,
season_name varchar(100) NOT NULL,
start_date date NOT NULL, 
end_date date NOT NULL
);

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
INSERT INTO Season (season_name, start_date, end_date)
VALUES ('Summer2017', '05-30-2017', '08-01-2017'); 

-- SELECT * FROM Season; 

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
VALUES (4, 'Ballet');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (5, 'Table Tennis');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (6, 'Badminton');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (7, 'Tennis');
INSERT INTO existing_clubs (club_id, club_name)
VALUES (8, 'Hip Hop Dance');

-- SELECT * FROM existing_clubs;

CREATE TABLE IF NOT EXISTS instructors_clubs (
ic_id serial NOT NULL PRIMARY KEY,
instructor_id INT REFERENCES instructors(instructor_id) NOT NULL,
club_id INT REFERENCES existing_clubs(club_id) NOT NULL, 
season_id INT REFERENCES Season(season_id) NOT NULL
); 

INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (1, 3, 1);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (4, 1, 4);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (7, 4, 2);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (11, 8, 5);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (18, 7, 3);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (19, 2, 9);
INSERT INTO instructors_clubs (instructor_id, club_id, season_id)
VALUES (20, 8, 9);

-- SELECT* FROM instructors_clubs; 

CREATE TABLE IF NOT EXISTS members_clubs (
mc_id serial NOT NULL PRIMARY KEY,
member_id INT REFERENCES members(member_id) NOT NULL,
club_id INT REFERENCES existing_clubs(club_id) NOT NULL, 
season_id INT REFERENCES Season(season_id) NOT NULL
);

INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (2, 3, 4); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (3, 1, 1); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (5, 4, 6); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (6, 2, 6); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (8, 3, 5); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (9, 6, 5); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (10, 5, 9); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (12, 8, 10); 
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (13, 7, 7);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (14, 1, 5);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (15, 2, 9);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (16, 8, 10);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (17, 5, 9);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (17, 3, 4);
INSERT INTO members_clubs (member_id, club_id, season_id)
VALUES (14, 7, 5);

-- SELECT * FROM members_clubs;

CREATE TABLE IF NOT EXISTS club_meetings(
meeting_id SERIAL NOT NULL PRIMARY KEY,
club_id INT REFERENCES existing_clubs(club_id) NOT NULL,
start_time timestamp with time zone NOT NULL,
description VARCHAR(255)
);

INSERT INTO club_meetings (club_id, start_time, description)
VALUES (2, '2014-09-01 17:00:00', 'Competition Details');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (4, '2015-06-01 11:00', 'Pratice before Finale');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (5, '2016-11-02', 'Choosing Partners');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (1, '2017-01-10', 'Under 15 Race details');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (7, '2016-12-01', 'Upcoming Tournament Details');
INSERT INTO club_meetings (club_id, start_time, description)
VALUES (8, '2015-03-24', 'Routine Practice Deatils');

-- SELECT* FROM club_meetings;

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
VALUES (4, '2017-01-23 17:00:00', 'Appreciation Day', 'Appreciating your peers');
INSERT INTO club_events (club_id, start_time, event_title, description)
VALUES (1, '2015-08-18 15:30:00', 'FreeStyle 100m', 'Race');
INSERT INTO club_events (club_id, start_time, event_title, description)
VALUES (2, '2014-10-03 09:00:00', 'Boys Tournament', 'In-house Tournament Boys');
INSERT INTO club_events (club_id, start_time, event_title, description)
VALUES (6, '2016-05-17 16:00:00', 'Meet and Greet', NULL); 

-- SELECT * FROM club_events;

CREATE TABLE IF NOT EXISTS meeting_attendances (
meeting_id INT REFERENCES club_meetings(meeting_id) NOT NULL,
member_id INT REFERENCES members(member_id) NOT NULL,
PRIMARY KEY (meeting_id, member_id)
);

INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (1, 6);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (1, 15);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (2, 5);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (3, 10);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (3, 17);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (4, 3);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (4, 14);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (5, 13);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (5, 14);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (6, 12);
INSERT INTO meeting_attendances (meeting_id, member_id)
VALUES (5, 16);

-- SELECT*FROM meeting_attendances; 

CREATE TABLE IF NOT EXISTS event_attendances (
event_id INT REFERENCES club_events(event_id) NOT NULL,
member_id INT REFERENCES members(member_id) NOT NULL,
primary key (event_id, member_id)
); 

INSERT INTO event_attendances (event_id, member_id)
VALUES (1, 12);
INSERT INTO event_attendances (event_id, member_id)
VALUES (1, 16);
INSERT INTO event_attendances (event_id, member_id)
VALUES (2, 5);
INSERT INTO event_attendances (event_id, member_id)
VALUES (3, 3);
INSERT INTO event_attendances (event_id, member_id)
VALUES (3, 14);
INSERT INTO event_attendances (event_id, member_id)
VALUES (4, 6);
INSERT INTO event_attendances (event_id, member_id)
VALUES (4, 15);
INSERT INTO event_attendances (event_id, member_id)
VALUES (5, 9);

-- SELECT*FROM event_attendances;

CREATE TABLE IF NOT EXISTS equipment (
equipment_id INT NOT NULL UNIQUE PRIMARY KEY, 
equipment_name VARCHAR(255) NOT NULL
);

INSERT INTO equipment (equipment_id, equipment_name)
VALUES (1, 'swimming goggles');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (2, 'swimming cap');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (3, 'basketball');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (4, 'soccer ball');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (5, 'shin pads');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (6, 'Speakers');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (7, 'table tennis racket');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (8, 'ping pong ball'); 
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (9, 'badminton racket');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (10, 'shuttlecock');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (11, 'tennis racket');
INSERT INTO equipment (equipment_id, equipment_name)
VALUES (12, 'tennis ball green');

-- SELECT*FROM Equipment;

CREATE TABLE IF NOT EXISTS ClubsEquipment (
club_id INT REFERENCES existing_clubs(club_id) NOT NULL,
equipment_id INT REFERENCES equipment(equipment_id) NOT NULL
); 

INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (1, 1);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (1, 2);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (2, 3);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (3, 4);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (3, 5);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (5, 7);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (5, 8);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (6, 9);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (6, 10);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (7, 11);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (7, 12);
INSERT INTO ClubsEquipment (club_id, equipment_id) 
VALUES (8, 6);

-- SELECT* FROM ClubsEquipment;

-- Stored Procedures 

CREATE OR REPLACE FUNCTION 

-- Reports
SELECT instructors_info.monthly_salary_usd, People.first_name, People.last_name
FROM instructors_info
INNER JOIN Instructors 
ON Instructors.instructor_id = instructors_info.instructor_id
INNER JOIN People
ON People.people_id = Instructors.instructor_id
GROUP BY People.first_name, instructors_info.monthly_salary_usd, People.last_name
HAVING monthly_salary_usd > '300'; 

SELECT TRUNC (
                CAST (
                         (SELECT COUNT(people_id) as count
                          FROM People
                          WHERE date_part('year', age( People.birth_date )) < 21
                         ) as decimal(5,2)
                         ) / (SELECT COUNT(people_id) as total
                              FROM People
                             ) * 100
              ) as Underage;


Select Gender, (Count(Gender)* 100 / (Select Count(*) From People)) as Percentage
From People
Group By Gender; 

-- Subqueries

SELECT first_name, last_name
FROM People
WHERE people_id IN (SELECT member_id 
                    FROM Members
                    WHERE member_id IN (SELECT meeting_id
			                 FROM meeting_attendances
			                 WHERE meeting_id = 3)
			                 );
SELECT first_name, last_name
FROM People
WHERE people_id IN (SELECT instructor_id
                    FROM Instructors
                    WHERE instructor_id IN (SELECT instructor_id
                                            FROM instructors_clubs
                                            WHERE season_id = 9 )
                                            );

-- Views

CREATE OR REPLACE VIEW membersInformation AS
SELECT p.first_name,
       p.last_name,
       p.gender,
       p.birth_date,
       p.phone_number,
       p.emergency_contact_name,
       p.emergency_contact_phone
FROM People p, Members m 
WHERE p.people_id = m.member_id
ORDER BY p.last_name DESC;

SELECT * FROM membersInformation;

CREATE OR REPLACE VIEW instructorsInformation AS
SELECT   p.first_name, 
	 p.last_name,
	 p.gender,
	 p.birth_date,
	 p.phone_number,
	 p.emergency_contact_name,
	 p.emergency_contact_phone
FROM People p, Instructors i
WHERE p.people_id = i.instructor_id
ORDER BY p.last_name DESC;

SELECT * FROM instructorsInformation;

DROP VIEW IF EXISTS ClubsThisSeason;
CREATE OR REPLACE VIEW ClubsThisSeason AS
SELECT distinct club_name 
FROM existing_clubs, members_clubs, Season
WHERE existing_clubs.club_id = members_clubs.club_id
AND members_clubs.season_id = season.season_id
AND NOW() > season.start_date
AND NOW() < season.end_date

SELECT * FROM ClubsThisSeason;

DROP VIEW IF EXISTS ClubEquipments;
CREATE OR REPLACE VIEW ClubEquipments AS
SELECT club_name, equipment_name
FROM existing_clubs 
INNER JOIN ClubsEquipment 
ON existing_clubs.club_id = ClubsEquipment.club_id
INNER JOIN Equipment
ON Equipment.equipment_id = ClubsEquipment.equipment_id;

SELECT * FROM ClubEquipments;

DROP VIEW IF EXISTS ptyp;
CREATE OR REPLACE VIEW ptype AS
SELECT first_name, payment_method
FROM People
INNER JOIN Members
ON people.people_id = Members.member_id
INNER JOIN members_info
ON Members.member_id = members_info.member_id
WHERE payment_method = 'credit';

SELECT * FROM ptype;

CREATE OR REPLACE VIEW membersFall2015 AS
 SELECT first_name, last_name, season_name
 FROM People
 INNER JOIN Members
 ON People.people_id = Members.member_id
 INNER JOIN members_clubs
 ON Members.member_id = members_clubs.member_id
 INNER JOIN Season
 ON Season.season_id = members_clubs.season_id
 WHERE season_name = 'Fall2015';
 
 SELECT * FROM membersFall2015;

-- inner and outer joins

SELECT first_name, season_name
FROM People
INNER JOIN Instructors 
ON Instructors.instructor_id = People.people_id
INNER JOIN instructors_clubs
ON Instructors.instructor_id = instructors_clubs.instructor_id
INNER JOIN Season
ON instructors_clubs.season_id = Season.season_id;


SELECT first_name, start_date, membership_expiration, monthly_fee_usd
FROM People
INNER JOIN Members
ON People.people_id = Members.member_id
INNER JOIN members_info
ON Members.member_id = members_info.member_id
ORDER BY monthly_fee_usd;


SELECT club_name, equipment_name
FROM existing_clubs
FULL OUTER JOIN ClubsEquipment
ON existing_clubs.club_id = ClubsEquipment.club_id
FULL OUTER JOIN Equipment
ON Equipment.equipment_id = ClubsEquipment.equipment_id;

SELECT first_name, club_name
FROM People
LEFT JOIN Members
ON People.people_id = Members.member_id
FULL OUTER JOIN meeting_attendances
ON Members.member_id = meeting_attendances.member_id
FULL OUTER JOIN club_meetings
ON meeting_attendances.meeting_id = club_meetings.meeting_id
FULL OUTER JOIN existing_clubs
ON club_meetings.club_id = existing_clubs.club_id;


SELECT first_name, last_name, instructor_id, member_id
FROM Instructors 
LEFT OUTER JOIN People
ON Instructors.instructor_id = People.people_id
LEFT OUTER JOIN Members
ON Members.member_id = People.people_id; 

 -- Stored Procedures


 CREATE FUNCTION memberForMeetings (club_id INT, season_id INT, member_id INT)
RETURNS BIGINT as $$
SELECT count(cm.meeting_id) as Attendances 
FROM club_meetings cm, meeting_attendances ma, Season
WHERE cm.club_id = $1
AND cm.start_time >= Season.start_date
AND cm.start_time <= Season.end_date
AND season.season_id = $2
AND ma.member_id = $6
AND cm.meeting_id = ma.meeting_id;
$$ language 'sql';

CREATE FUNCTION MemberForEvents (event_id int, season_id INT, member_id INT)
RETURNS BIGINT as $$
SELECT count(ce.event_id) as Attendances
FROM club_events ce, event_attendances ea, Season
WHERE ce.start_time >= season.start_date
AND ce.start_time <= season.end_date
AND season.season_id = $2
AND ea.member_id = $3
AND ce.event_id = ea.event_id
$$ language 'sql'; 
SELECT * FROM memberForEvents(3,2,4); 

DROP FUNCTION IF EXISTS rewardPoints(int, int, int);
CREATE FUNCTION rewardPoints(season_id int, club_id int, member_id int)
RETURNS BOOLEAN as $$
SELECT (100 * memberForMeetings(members_clubs.club_id, members_clubs.season_id, members_clubs.member_id) / totalMeetingsBySeason(members_clubs.club_id, members_clubs.season_id) >= 50
	AND memberForMeetings(members_clubs.club_id, members_clubs.season_id, members_clubs.member_id)/ totalMeetingsBySeason(members_clubs.club_id, members_clubs.season_id) >= 50)
FROM members_clubs, season
WHERE members_clubs.season_id = $1
AND members_clubs.club_id = $1
AND members_clubs.member_id = $2;
$$ language 'sql';
SELECT * FROM rewardPoints(1,1,2); 


CREATE OR REPLACE FUNCTION totalPeople()
RETURNS integer AS $total$
declare
	total integer;
BEGIN
   SELECT count(*) into total FROM People;
   RETURN total;
END;
$total$ LANGUAGE plpgsql;

select totalPeople();


CREATE OR REPLACE FUNCTION totalSalary()
RETURNS money AS $salary$
declare
	salary money;
BEGIN
   SELECT SUM(monthly_salary_usd) into salary FROM instructors_info;
   RETURN salary;
END;
$salary$ LANGUAGE plpgsql;

SELECT totalSalary(); 



CREATE OR REPLACE FUNCTION totalFees()
RETURNS money AS $Fee$
declare
	Fee money;
BEGIN
   SELECT SUM(monthly_fee_usd) into Fee FROM members_info;
   RETURN Fee;
END;
$Fee$ LANGUAGE plpgsql;

select totalFees() - totalSalary() AS Profit;

-- Triggers
CREATE OR REPLACE FUNCTION date_order() RETURNS trigger AS $date_order$
BEGIN
	IF NEW.start_date > NEW.end_date THEN
		RAISE EXCEPTION 'end date % should come after
		start_date %.', NEW.start_date, NEW.end_date; 
	END IF;
	RETURN NEW;
END;
$date_order$ LANGUAGE plpgsql;
CREATE TRIGGER check_season_dates
	BEFORE INSERT or UPDATE
	ON season
	FOR EACH ROW EXECUTE PROCEDURE date_order(); 



CREATE OR REPLACE FUNCTION new_member () 
RETURNS trigger AS $$
BEGIN
IF NEW.is_member = true THEN
	INSERT INTO Members VALUES (NEW.member_id, NEW.start_date); 
END IF;
RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER add_member
AFTER INSERT OR UPDATE ON People
FOR EACH ROW
EXECUTE PROCEDURE new_member(); 



CREATE OR REPLACE FUNCTION new_instructor () 
RETURNS trigger AS $$
BEGIN
IF NEW.is_instructor = true THEN
	INSERT INTO Instructors VALUES (NEW.instructor_id, NEW.start_date); 
END IF;
RETURN NEW; 
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER add_member
AFTER INSERT OR UPDATE ON People
FOR EACH ROW
EXECUTE PROCEDURE new_instructor(); 

-- THE END-- 
