CREATE DATABASE testdb;

DROP TABLE IF EXISTS `testdb`.`member`;
DROP TABLE IF EXISTS `testdb`.`product`;
DROP TABLE IF EXISTS `testdb`.`buy`;

CREATE TABLE `testdb`.`member`(
    id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    member_id VARCHAR(30),
    name VARCHAR(10),
    address VARCHAR(10),
    phone_number VARCHAR(20),
    create_date datetime,
    update_date datetime
);

CREATE TABLE `testdb`.`product`(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    qty INT,
    price INT,
    create_date datetime,
    update_date datetime
);

CREATE TABLE `testdb`.`buy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `member_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

INSERT INTO `testdb`.`member` (member_id,name,address,phone_number,create_date,update_date) VALUES
     ('TWC','트와이스','Seoul','010-1111-1111','2023-02-06 14:04:08','2023-02-06 14:04:08'),
     ('BLK','블랙핑크','Seoul','010-1111-2222','2023-02-06 14:04:08','2023-02-06 14:04:08'),
     ('WMN','여자친구','Daegu','010-1111-3333','2023-02-06 14:04:08','2023-02-06 14:04:08'),
     ('OMY','오마이걸','Daegu','010-1111-4444','2023-02-06 14:04:08','2023-02-06 14:04:08'),
     ('GRL','소녀시대','Daegeon','010-1111-5555','2023-02-06 14:04:08','2023-02-06 14:04:08'),
     ('ITZ','잇지','Daegeon','010-2222-1111','2023-02-06 14:04:08','2023-02-06 14:04:08'),
     ('RED','레드밸벳','Daegeon','010-2222-1111','2023-02-06 14:04:08','2023-02-06 14:04:08'),
     ('APN','에이핑크','Busan','010-2222-2222','2023-02-06 14:04:08','2023-02-06 14:04:08'),
     ('SPC','우주소녀','Junnam','010-2222-2222','2023-02-06 14:04:08','2023-02-06 14:04:08');

INSERT INTO `testdb`.`product`
(`name`, `qty`, `price`, `create_date`, `update_date`)
VALUES
('carrot', 10, 1000, NOW(), NOW()),
('apple', 100, 500, NOW(), NOW()),
('pear', 30, 800, NOW(), NOW()),
('orange', 50, 800, NOW(), NOW()),
('honey', 10, 3000, NOW(), NOW()),
('cabage', 15, 3000, NOW(), NOW()),
('pine', 20, 5000, NOW(), NOW()),
('melon', 10, 10000, NOW(), NOW());

INSERT INTO `testdb`.`buy` (member_id,product_id,qty,create_date,update_date) VALUES
     (1,1,10,'2023-02-07 08:24:33','2023-02-07 08:24:33'),
     (1,2,30,'2023-02-07 08:29:48','2023-02-07 08:29:48'),
     (2,1,10,'2023-02-07 08:29:58','2023-02-07 08:29:58'),
     (5,2,10,'2023-02-07 08:30:07','2023-02-07 08:30:07'),
     (6,8,5,'2023-02-07 08:30:30','2023-02-07 08:30:30'),
     (3,3,4,'2023-02-07 08:30:39','2023-02-07 08:30:39'),
     (3,5,10,'2023-02-07 08:30:50','2023-02-07 08:30:50'),
     (4,4,10,'2023-02-07 08:38:40','2023-02-07 08:38:40'),
     (5,2,10,'2023-02-07 08:38:40','2023-02-07 08:38:40'),
     (4,1,20,'2023-02-07 08:38:40','2023-02-07 08:38:40');

INSERT INTO `testdb`.`buy` (member_id,product_id,qty,create_date,update_date) VALUES
     (6,7,10,'2023-02-07 08:38:40','2023-02-07 08:38:40'),
     (9,4,10,'2023-02-07 08:38:40','2023-02-07 08:38:40'),
     (7,2,30,'2023-02-07 08:38:40','2023-02-07 08:38:40'),
     (1,7,20,'2023-02-07 08:38:40','2023-02-07 08:38:40');
