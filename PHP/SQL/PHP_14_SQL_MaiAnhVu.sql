CREATE DATABASE vuma_aptech_php_14;
USE vuma_aptech_php_14;

DROP DATABASE vuma_aptech_php_14;

CREATE TABLE vuma_aptech_php_14.users
(
    id int,
    last_name varchar(255),
    first_name varchar(255),
    email varchar(255) unique,
    created_at datetime,
    modified_at datetime,
    deleted_at datetime
);
DROP TABLE  	vuma_aptech_php_14.users;

ALTER TABLE vuma_aptech_php_14.users ADD dob date; 

ALTER TABLE vuma_aptech_php_14.users DROP COLUMN DOB; 


INSERT INTO vuma_aptech_php_14.users
    (id,last_name, first_name, email, created_at)
VALUES
    (1, 'Nam', 'Nguyen', 'namnh.website@gmail.com', NOW()),
    (2, 'John', 'Cenna', 'cenna.john@hotmail.com',   NOW()),
    (3, 'Henry', 'Tran', 'tranhe@resolutioninc.com',   NOW()),
    (4, 'Christiaan', 'Hunter', 'ch.pageworth@pageworth.com',  NOW()),
    (5, 'Vicky', 'Nguyen', 'vicky06@gmail.com',   NOW());
    
    SELECT *
FROM vuma_aptech_php_14.users;

SELECT DISTINCT uRole
FROM vuma_aptech_php_14.users;

SELECT *
FROM vuma_aptech_php_14.users
WHERE uRole = 1 and uState = 1;

SELECT *
FROM vuma_aptech_php_14.users 
LIMIT
3;

SELECT *
FROM vuma_aptech_php_14.users 
WHERE uRole = 1;

UPDATE vuma_aptech_php_14.users 
SET uState = -1 
WHERE uId = 4;

DELETE FROM vuma_aptech_php_14.users
WHERE uId = 5;

ALTER TABLE vuma_aptech_php_14.users
ADD PRIMARY KEY(uId);
ALTER TABLE vuma_aptech_php_14.users
MODIFY COLUMN uId int NOT NULL AUTO_INCREMENT ;

INSERT INTO vuma_aptech_php_14.users
    (uLastName, uFirstName,uEmail,uRole,uState,createdDate)
VALUES
    ('Anna', 'Christopher', 'annateacher@yahoo.com', 2, 1, NOW());
    
    CREATE TABLE vuma_aptech_php_14.apRole
(
    rId int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rTitle varchar(255) NOT NULL UNIQUE,
    rState int DEFAULT 1
);


INSERT INTO vuma_aptech_php_14.apRole (rTitle)
VALUES ('Administrator'),('Copywriter');


ALTER TABLE vuma_aptech_php_14.apUser
MODIFY COLUMN uEmail varchar(255) NOT NULL UNIQUE;

ALTER TABLE vuma_aptech_php_14.apUser
MODIFY COLUMN uState int DEFAULT 1, 
MODIFY COLUMN uRole int DEFAULT 2;

ALTER TABLE vuma_aptech_php_14.apUser
MODIFY COLUMN uCreatedDate datetime DEFAULT NOW();

ALTER TABLE vuma_aptech_php_14.apUser
ADD FOREIGN KEY (uRole) REFERENCES aptech_php.apRole(rId); 

INSERT INTO vuma_aptech_php_14.apUser (uLastName,uFirstName,uEmail)
VALUES ('Ford','Henry','henry.ford@gmail.com');