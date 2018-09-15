CREATE DATABASE aptech_php_14_vuma;
USE aptech_php_14_vuma;
CREATE TABLE users(
	id  int auto_increment primary key,
    name varchar(50),
    email varchar(400),
    password varchar(50),
    create_date timestamp
);
 
INSERT INTO users (name,email,password)
VALUES ("yourname","yourname@gmail.com","123"),("nam","nam@gmail.com","321"),("phong","phong@gmail.com","456"),("vu","vu@gmail.com","345"),("aa","bb","cc"),("aaa","bbb","ccc");

SELECT * FROM users;
TRUNCATE TABLE users;


CREATE TABLE roles(
id int auto_increment primary key,
name varchar(100)

);
TRUNCATE TABLE roles;
SELECT * FROM roles;
INSERT INTO roles (name)
VALUES ("admin"),("copy master"),("manager"),("director");

CREATE TABLE role_user(
id int auto_increment primary key,
user_id varchar(100),
role_id varchar(100)
);
INSERT INTO role_user (user_id,role_id)
VALUES ("1","2"),("1","1"),("2","3"),("1","4"),("2","1"),("4","4"),("4","1");
SELECT * FROM role_user;
TRUNCATE TABLE role_user;


SELECT * FROM users where name='vu';
select * from role_user where user_id ='4';
select * from roles where id = '4'; 
select * from roles where id = '1'; 


select * from users
join (select * from roles) as A
join (select * from role_user) as B
on A.id = B.role_id and users.id = B.user_id
where users.name='vu';

