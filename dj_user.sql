SET NAMES UTF8;
DROP DATABASE IF EXISTS dj_user;
CREATE DATABASE dj_user CHARSET=UTF8;
USE dj_user;


CREATE TABLE user(
did INT PRIMARY KEY AUTO_INCREMENT,  #编号
dphone VARCHAR(10240) #手机号
demail VARCHAR(1024)  #邮箱
dpwd VARCHAR(1024),  #密码
);

INSERT INTO `dj_user` (`did`, `dphone`, `demail`, `dpwd`) VALUES (1, '13171831633', '1031124494@qq.com', 'abc123456');
INSERT INTO `dj_user` (`did`, `dphone`, `demail`, `dpwd`) VALUES (2, '13552425659', '13552425659@qq.com', 'abc111111');
INSERT INTO `dj_user` (`did`, `dphone`, `demail`, `dpwd`) VALUES (3, '13185266654', '13185266654@qq.com', 'aaa123456');
INSERT INTO `dj_user` (`did`, `dphone`, `demail`, `dpwd`) VALUES (4, '13174859595', '13174859595@qq.com', 'bbb123456');
INSERT INTO `dj_user` (`did`, `dphone`, `demail`, `dpwd`) VALUES (5, '13152524545', '13152524545@qq.com', NULL);
