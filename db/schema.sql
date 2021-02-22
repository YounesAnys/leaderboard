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
CREATE TABLE leaderboard (
	athletes int,
	Competition varchar(50),
	start_time date,
	migration date,
	PRIMARY KEY (athletes, Competition, Date),
	foreign key (athletes) references athletes(athletes),
	foreign key (Competition) references competition(Name),
);