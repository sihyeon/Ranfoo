create database station;
grant all on station.* to 'id02'@'localhost' identified by 'pwd02';
grant all on station.* to 'id02'@'%' identified by 'pwd02';

create TABLE station (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	station VARCHAR(80) NOT NULL,
	numOfMember INT,
	12Member INT,
	13Member INT,
	14Member INT,
	15Member INT,
	16Member INT,
	17Member INT,
	18Member INT,
	19Member INT,
	20Member INT,
	21Member INT,
	22Member INT,
	23Member INT,
	24Member INT);
	