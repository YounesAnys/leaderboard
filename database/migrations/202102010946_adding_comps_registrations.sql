
CREATE TABLE competitions (
    comp_name               varchar(255), 
    venue                   varchar(255), 
    startdate               DATE, 
    starttime               time, 
    duration                time, 
    PRIMARY KEY (comp_name);
)

CREATE TABLE registrations (
    id                      int(10), 
    comp_name               varchar(255), 
    PRIMARY KEY (id, comp_name),
    FOREIGN KEY (id) REFERENCES athletes(id),
    FOREIGN KEY (comp_name) REFERENCES competitions(comp_name)
);

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202102010946_adding_comps_registrations.sql', '2021-02-01 09:47:00');