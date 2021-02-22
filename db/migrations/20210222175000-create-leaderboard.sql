CREATE TABLE leaderboard (
	athletes int,
	Competition varchar(50),
	start_time date,
	migration date,
	PRIMARY KEY (athletes, Competition, Date),
	foreign key (athletes) references athletes(athletes),
	foreign key (Competition) references competition(Name),
);
