create database chat;
grant all on chat.* to 'id01'@'localhost' identified by 'pwd01';
grant all on chat.* to 'id01'@'%' identified by 'pwd01';

CREATE TABLE chats (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(80) NOT NULL,
	message VARCHAR(250) NOT NULL);