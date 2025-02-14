CREATE TABLE college_distances
(
	id INT AUTO_INCREMENT PRIMARY KEY
    ,startingCollege VARCHAR (255)
    ,endingCollege VARCHAR (255)
    ,distance INT
);

LOAD DATA INFILE 'D:\SQL\collegedistances.csv'
INTO TABLE college_distances
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
