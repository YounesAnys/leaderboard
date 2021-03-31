
CREATE TABLE migrations (
    mig_id                  varchar(255),
    migrated_at             time,
    PRIMARY KEY (mig_id;)
)

INSERT INTO migrations(mig_id,migrated_at)
VALUES ('202101271811_deliv1.sql', '2021-01-27 18:11:00');

INSERT INTO migrations (mig_id,migrated_at)
VALUES ('202101301127_adding_migrations.sql', '2021-01-30 11:27:00');