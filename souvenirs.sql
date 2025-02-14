USE project1;

DROP TABLE IF EXISTS souvenirs_list;
CREATE TABLE souvenirs_list
(
    College VARCHAR (255),
    Souvenirs VARCHAR (255),
    Cost VARCHAR (255)
); 

-- create a table
-- to import ur csv...
-- project1 > table > table import wizard 
-- make sure to create with an already existing table 
-- this method of importing does not have the option to choose auto_increment id as primary key so u have to do it after u import with the table import data wizard 
-- to look at ur table

SELECT * 
FROM souvenirs_list;
