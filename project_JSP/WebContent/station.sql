create database station;
grant all on station.* to 'id02'@'localhost' identified by 'pwd02';
grant all on station.* to 'id02'@'%' identified by 'pwd02';

create TABLE stations (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	station VARCHAR(80) NOT NULL,
	memberNum VARCHAR(80) NOT NULL);