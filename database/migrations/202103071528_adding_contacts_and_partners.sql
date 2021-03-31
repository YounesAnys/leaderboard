
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
    PRIMARY KEY (name)
    FOREIGN KEY (contact_email) REFERENCES contacts(email)
);

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202103071528_adding_contacts_and_partners.sql', '2021-03-07 15:28:00')