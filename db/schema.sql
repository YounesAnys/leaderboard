CREATE TABLE athletes (
	ID int PRIMARY KEY,
	Name varchar(50),
	Gender varchar(6),
	dob date
);
CREATE TABLE Competition (
	Name varchar(50) PRIMARY KEY,
	Venue varchar(50),
	start_time date
);
CREATE TABLE register (
	athletes int,
	Competition varchar(50),
	start_time date,
	migration date,
	PRIMARY KEY (athletes, Competition, Date),
	foreign key (athletes) references athletes(athletes),
	foreign key (Competition) references competition(Name),
);

SELECT* 
FROM athletes;

DELETE
FROM athletes 
WHERE Name='Jean';
SELECT* 
FROM athletes;

UPDATE athletes 
SET Name = 'Brivian' 
WHERE Name = 'Pilon';
SELECT* 
FROM athletes;

INSERT INTO Competition VALUES ('Course', 'Summer', '2021/06/17', '001');
INSERT INTO Competition VALUES ('soccer', 'Winter', '2021/01/01', '007');
INSERT INTO Competition VALUES ('soccer', 'Winter', '2021/02/10', '003');
SELECT* 
FROM Competition;

INSERT INTO register VALUES (7, '0000005', '003');
INSERT INTO register VALUES (5, '0000007', '007');
SELECT* 
FROM register;


DELETE
FROM Competition 
WHERE Name='001';
SELECT* 
FROM Competition;

DELETE
FROM register 
WHERE ID ='0000007';
SELECT* 
FROM register;

UPDATE competitions 
SET Venue = 'automne' 
WHERE Name = '007';
SELECT* 
FROM Competition;

UPDATE register 
WHERE ID = '0000005';
SELECT* 
FROM register;
