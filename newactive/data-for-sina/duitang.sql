SET NAMES UTF8;
DROP DATABASE IF EXISTS duitang;
CREATE DATABASE duitang CHARSET=UTF8;
USE duitang;
## 创建用户表
CREATE TABLE user(
	uid int primary key AUTO_INCREMENT,
	name VARCHAR(32),
	pwd VARCHAR(32)
);
INSERT INTO user VALUES
(NULL,"fengkangkai","fkk931024");
## 创建后台数据加载表
CREATE TABLE detil(
	d_id int primary key AUTO_INCREMENT,
	d_img VARCHAR(64),
	d_uname VARCHAR(32),
	d_detil VARCHAR(2048),
	select_1 int,
	select_2 int
);
INSERT INTO detil VALUES
(NULL,"img/falls18.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.",91,8),
(NULL,"img/falls01.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.,Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.",91,8),
(NULL,"img/falls02.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora digniss",91,8),
(NULL,"img/falls03.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.",91,8),
(NULL,"img/falls04.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.",91,8),
(NULL,"img/falls05.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.",91,8),
(NULL,"img/falls06.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.",91,8),
(NULL,"img/falls07.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum facere tempora dignissimos natus et sint asperiores fugit mollitia consequatur cumque ducimus dicta architecto ex. Fugit similique.",91,8),
(NULL,"img/falls08.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls09.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls10.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls11.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls01.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls12.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls13.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls14.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls15.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls16.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls17.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls18.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls19.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls20.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls21.jpg","当时若挽回"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls22.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls23.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls24.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls25.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls03.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls04.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls05.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls06.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8),
(NULL,"img/falls07.jpg","当时若挽回","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatumLorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci accusantium laudantium consequuntur voluptatum",91,8);

