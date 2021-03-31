-- SQL statement to create the athlete list
CREATE TABLE athletes (
    id              varchar(10),        
    athlName        varchar(255),   
    dob             DATE,    
    gender          varchar(1),   
    PRIMARY KEY (id)
);