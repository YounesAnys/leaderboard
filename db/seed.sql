
INSERT INTO athletes VALUES('Younes', '1999/02/10', 'M', '0000001');
INSERT INTO athletes VALUES('Mohamed', '1997/06/10', 'M', '0000005');
INSERT INTO athletes VALUES('Sami', '1999/07/05', 'M', '0000002');
INSERT INTO athletes VALUES('Sarah', '1998/05/10', 'F', '0000007');

SELECT* 
FROM athletes;

DELETE
FROM athletes
WHERE Name='Younes';
SELECT* 
FROM athletes;

UPDATE athletes 
SET Name = 'Alex' 
WHERE Name = 'Sami';
SELECT* 
FROM athletes;

INSERT INTO competitions VALUES ('Course', 'Summer', '2021/07/07', '001');
INSERT INTO competitions VALUES ('soccer', 'Winter', '2021/02/10', '007');
INSERT INTO competitions VALUES ('soccer', 'Winter', '2021/02/10', '003');
SELECT* 
FROM competitions;

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

UPDATE Competition 
SET Venue = 'automne' 
WHERE Name = '007';
SELECT* 
FROM Competition;

UPDATE register 
WHERE ID = '0000005';
SELECT* 
FROM register;
