USE project1;

DROP TABLE IF EXISTS college_distances;
CREATE TABLE college_distances
(
    startingCollege VARCHAR (255),
    endingCollege VARCHAR (255),
    distance INT
); 

SHOW VARIABLES LIKE 'local_infile';

SHOW VARIABLES LIKE 'secure_file_priv';


SET GLOBAL local_infile = 1;

SHOW TABLES;

LOAD DATA LOCAL INFILE 'D:/SQL/uploads/collegedistances.csv'
INTO TABLE college_distances
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create a table
-- to import ur csv...
-- project1 > table > table import wizard 
-- make sure to create with an already existing table 
-- this method of importing does not have the option to choose auto_increment id as primary key so u have to do it after u import with the table import data wizard 

-- to look at ur table
SELECT * 
FROM college_distances;

SELECT * FROM college_distances
WHERE startingCollege = 'Saddleback College';

-- seeing how many start from saddleback
SELECT COUNT(startingCollege) AS total
FROM college_distances WHERE startingCollege = 'Saddleback College';

SELECT * FROM college_distances
WHERE startingCollege = 'University of California, Irvine (UCI)';

-- seeing how many start from uci
SELECT COUNT(startingCOllege)
FROM college_distances WHERE startingCollege = 'University of California, Irvine (UCI)';