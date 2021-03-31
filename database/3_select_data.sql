
SELECT id,athlName,dob,gender FROM athletes;
SELECT * FROM competitions;
SELECT * FROM registrations;
SELECT * FROM partners;
SELECT * FROM events;
SELECT * FROM contacts;


SELECT * FROM athletes
INNER JOIN registrations
WHERE athletes.id = registrations.id AND athletes.gender = 'M';


SELECT athlete_id, event_name, athlName, time, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.id = results.athlete_id AND comp_name = "The uOttawa Tournament" AND event_name = "Speed Skating"
ORDER BY time ASC;


SELECT athlete_id, event_name, athlName, time, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.id = results.athlete_id AND comp_name = "The uOttawa Tournament" AND event_name = "100m Sprint"
ORDER BY time ASC;


SELECT athlete_id, event_name, athlName, weight, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.id = results.athlete_id AND comp_name = "The uOttawa Tournament" AND event_name = "Weightlifting"
ORDER BY weight DESC;


SELECT athlete_id, event_name, athlName, weight, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.gender = 'F' AND athletes.id = results.athlete_id AND comp_name = "The uOttawa Tournament" AND event_name = "Weightlifting"
ORDER BY weight DESC;


SELECT athlete_id, event_name, athlName, weight, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.gender = 'M' AND athletes.id = results.athlete_id AND comp_name = "The uOttawa Tournament" AND event_name = "Weightlifting"
ORDER BY weight DESC;


SELECT athlete_id, event_name, athlName, reps, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.id = results.athlete_id AND comp_name = "Bob Smith Competition" AND event_name = "Push-ups"
ORDER BY reps DESC;


SELECT athlete_id, event_name, athlName, reps, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.id = results.athlete_id AND comp_name = "Bob Smith Competition" AND event_name = "Sit-ups"
ORDER BY reps DESC;


SELECT athlete_id, event_name, athlName, time, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.id = results.athlete_id AND comp_name = "Jeux de Gatineau" AND event_name = "Cycling"
ORDER BY time ASC;


SELECT athlete_id, event_name, athlName, time, nationality FROM results
NATURAL JOIN athletes
WHERE athletes.id = results.athlete_id AND comp_name = "Jeux de Gatineau" AND event_name = "Marathon"
ORDER BY time ASC;
