SET NAMES UTF8;
DROP DATABASE IF EXISTS dj_admin;
CREATE DATABASE dj_admin CHARSET=UTF8;
USE dj_admin;


CREATE TABLE admin(
did INT PRIMARY KEY AUTO_INCREMENT,  #编号
dname VARCHAR(16),  #名称
dpwd VARCHAR(1024),  #密码
dphone VARCHAR(10240) #手机号
demail VARCHAR(1024)  #邮箱
);

INSERT INTO `dj_amin` (`did`, `dname`, `dpwd`, `dphone`, `demail`) VALUES ('1', 'dingding', '123456', '18512355555', '123@qq.com');
INSERT INTO `dj_amin` (`did`, `dname`, `dpwd`, `dphone`, `demail`) VALUES ('2', 'dangdang', '123456', '12345678955', '111@qq.com');
INSERT INTO `dj_amin` (`did`, `dname`, `dpwd`, `dphone`, `demail`) VALUES ('3','bibi', '123456', '12345678955', '111@qq.com');
