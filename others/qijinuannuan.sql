set names utf8;
drop database if exists nuannuan;
create database nuannuan;
use nuannuan;

create table news_carousel(
    ncid int primary key AUTO_INCREMENT,
    src varchar(64),
    title varchar(16)
);
insert into news_carousel values (null,"image/news/news01.jpg","一起爱");
insert into news_carousel values (null,"image/news/news02.jpg","摩纳哥活动承载页");
insert into news_carousel values (null,"image/news/news03.png","流浪猫领养计划");
insert into news_carousel values (null,"image/news/news04.jpg","故宫专页");


create table game_ts(
    ts_id int primary key AUTO_INCREMENT,
    src varchar(64),
    href varchar(64)
);
insert into game_ts values (null,"image/ts/ts-01.jpg","game_ts.html");
insert into game_ts values (null,"image/ts/ts-02.jpg","game_ts.html");
insert into game_ts values (null,"image/ts/ts-03.jpg","game_ts.html");
insert into game_ts values (null,"image/ts/ts-04.jpg","game_ts.html");
insert into game_ts values (null,"image/ts/ts-05.jpg","game_ts.html");

create table game_cy(
    cy_id int primary key AUTO_INCREMENT,
    src varchar(64),
    href varchar(64)
);
insert into game_cy values (null,"image/cy/cy-01.jpg","qjpage/cyzl/cy-01.hmtl");
insert into game_cy values (null,"image/cy/cy-02.jpg","qjpage/cyzl/cy-02.hmtl");
insert into game_cy values (null,"image/cy/cy-03.jpg","qjpage/cyzl/cy-03.hmtl");
insert into game_cy values (null,"image/cy/cy-04.jpg","qjpage/cyzl/cy-04.hmtl");
insert into game_cy values (null,"image/cy/cy-05.jpg","qjpage/cyzl/cy-05.hmtl");
insert into game_cy values (null,"image/cy/cy-06.jpg","qjpage/cyzl/cy-06.hmtl");
insert into game_cy values (null,"image/cy/cy-07.jpg","qjpage/cyzl/cy-07.hmtl");

create table news_info(
    news_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(64),
    url varchar(64) default "javascript:;",
    date BIGINT NOT NULL,
    isHot INT DEFAULT 0,
    isNews INT DEFAULT 0,
    isNotice INT DEFAULT 0,
    isActivity INT DEFAULT 0
);
INSERT INTO news_info VALUES(NULL,"【复开通知】倾心回忆 梦恋奇迹","20171007.html","1507305600000",1,0,0,1);