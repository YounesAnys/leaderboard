
CREATE TABLE athletes (
    id              varchar(10),        
    athlName        varchar(255),   
    dob             DATE,           
    gender          varchar(1),         
    PRIMARY KEY (id)
);


CREATE TABLE migrations (
    mig_id                  varchar(255),
    migrated_at             time,
    PRIMARY KEY (mig_id)
);

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202101271811_deliv1.sql', '2021-01-27 18:11:00');
INSERT INTO migrations (mig_id,migrated_at)
VALUES ('202101301127_adding_migrations.sql', '2021-01-30 11:27:00');


CREATE TABLE competitions (
    comp_name               varchar(255), 
    venue                   varchar(255), 
    startdate               DATE, 
    starttime               time, 
    duration                time, 
    PRIMARY KEY (comp_name)
);

CREATE TABLE registrations (
    id                      varchar(10), 
    comp_name               varchar(255), 
    PRIMARY KEY (id, comp_name),
    FOREIGN KEY (id) REFERENCES athletes(id),
    FOREIGN KEY (comp_name) REFERENCES competitions(comp_name)
);

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202102010946_adding_comps_registrations.sql', '2021-02-01 09:47:00');

ALTER TABLE athletes
ADD nationality varchar(255);

ALTER TABLE athletes
ADD email varchar(255);


CREATE TABLE contacts (
    email           varchar(255),
    name            varchar(255),
    phone           varchar(255),
    PRIMARY KEY (email)
);


CREATE TABLE partners (
    name            varchar(255),
    address         varchar(255),
    contact_email   varchar(255),
    PRIMARY KEY (name),
    FOREIGN KEY (contact_email) REFERENCES contacts(email)
);

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202103071528_adding_contacts_and_partners.sql', '2021-03-07 15:28:00');


ALTER TABLE competitions
ADD max_athletes int;

ALTER TABLE competitions
ADD events int;

ALTER TABLE competitions
ADD partner_name varchar(255);

ALTER TABLE competitions
ADD contact_email varchar(255);


CREATE TABLE events (
    event_name          varchar(255),
    comp_name           varchar(255),
    scoring_type        varchar(255),
    PRIMARY KEY (event_name),
    FOREIGN KEY (comp_name) REFERENCES competitions(comp_name)
);


CREATE TABLE results (
    athlete_id          varchar(10),
    comp_name           varchar(255),
    event_name          varchar(255),
    time                Time,
    reps                int,
    weight              int,
    PRIMARY KEY (athlete_id, comp_name, event_name)
);

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202103071528_adding_results_events_update_comps.sql', '2021-03-07 15:36:00');

ALTER TABLE results
ADD tiebreaker1success boolean;

ALTER TABLE results
ADD tiebreaker2success boolean;

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202103091741_adding_tiebreakers.sql', '2021-03-09 17:41:00');

ALTER TABLE contacts
ADD password varchar(255);

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202103151839_adding_passwords.sql', '2021-03-15 18:39:00');