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
insert into news_carousel values (null,"image/news/1507871191106175511.jpg","故宫专页");

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

--节日盛典
CREATE TABLE suit_festival(
    suitId INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64),
    detailHref VARCHAR(32),
    detailSrc VARCHAR(64),
    suitName VARCHAR(16)
);
INSERT INTO suit_festival VALUES(NULL,"image/suitHandBook/01Festival/011.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/011A.jpg","花遇时光"),
(NULL,"image/suitHandBook/01Festival/012.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/012A.jpg","童趣美梦"),
(NULL,"image/suitHandBook/01Festival/013.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/013A.jpg","夕夜迢迢"),
(NULL,"image/suitHandBook/01Festival/014.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/014A.jpg","香罗端午"),
(NULL,"image/suitHandBook/01Festival/015.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/015A.jpg","驯鹿的祝福"),
(NULL,"image/suitHandBook/01Festival/016.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/016A.jpg","月宫蟾兔"),
(NULL,"image/suitHandBook/01Festival/017.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/017A.jpg","桃花歌"),
(NULL,"image/suitHandBook/01Festival/018.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/018A.jpg","踏雪寻梅"),
(NULL,"image/suitHandBook/01Festival/019.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/019A.jpg","蜜语甜心"),
(NULL,"image/suitHandBook/01Festival/0110.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0110A.jpg","小丑与钻石面具"),
(NULL,"image/suitHandBook/01Festival/0111.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0111A.jpg","马戏团奇妙夜"),
(NULL,"image/suitHandBook/01Festival/0112.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0112A.jpg","柔情蜜意"),
(NULL,"image/suitHandBook/01Festival/0113.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0113A.jpg","玫瑰情浓"),
(NULL,"image/suitHandBook/01Festival/0114.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0114A.jpg","齐天大圣"),
(NULL,"image/suitHandBook/01Festival/0115.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0115A.jpg","金猴送福"),
(NULL,"image/suitHandBook/01Festival/0117.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0117A.jpg","诵霓裳"),
(NULL,"image/suitHandBook/01Festival/0118.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0118A.jpg","生日贺礼"),
(NULL,"image/suitHandBook/01Festival/0119.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0119A.jpg","绮丽乐园"),
(NULL,"image/suitHandBook/01Festival/0120.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0120A.jpg","奇幻万圣夜"),
(NULL,"image/suitHandBook/01Festival/0122.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0122A.jpg","缤纷万圣夜"),
(NULL,"image/suitHandBook/01Festival/0123.jpg","suit_handbook_detail.html","image/suitHandBook/01Festival/0123A.jpg","爱资哈尔公主");


CREATE TABLE suit_troupe(
    suitId INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64),
    detailHref VARCHAR(32),
    detailSrc VARCHAR(64),
    suitName VARCHAR(16)
);
INSERT INTO suit_troupe VALUES
(NULL,"image/suitHandBook/02Troupe/0201.jpg","suit_handbook_detail.html","image/suitHandBook/02Troupe/0201A.png","天空随想曲"),
(NULL,"image/suitHandBook/02Troupe/0202.jpg","suit_handbook_detail.html","image/suitHandBook/02Troupe/0202A.jpg","黑白交响乐"),
(NULL,"image/suitHandBook/02Troupe/0203.jpg","suit_handbook_detail.html","image/suitHandBook/02Troupe/0203A.jpg","安灵镇魂曲"),
(NULL,"image/suitHandBook/02Troupe/0204.jpg","suit_handbook_detail.html","image/suitHandBook/02Troupe/0204A.jpg","圣和咏叹调"),
(NULL,"image/suitHandBook/02Troupe/0205.jpg","suit_handbook_detail.html","image/suitHandBook/02Troupe/0205A.jpg","星之海"),
(NULL,"image/suitHandBook/02Troupe/0206.jpg","suit_handbook_detail.html","image/suitHandBook/02Troupe/0206A.jpg","罗密欧"),
(NULL,"image/suitHandBook/02Troupe/0207.jpg","suit_handbook_detail.html","image/suitHandBook/02Troupe/0207A.jpg","黑天鹅"),
(NULL,"image/suitHandBook/02Troupe/0208.jpg","suit_handbook_detail.html","image/suitHandBook/02Troupe/0208A.jpg","白天鹅");

CREATE TABLE suit_together(
    suitId INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64),
    detailHref VARCHAR(32),
    detailSrc VARCHAR(64),
    suitName VARCHAR(16)
);
INSERT INTO suit_together VALUES
(NULL,"image/suitHandBook/03Together/0301.jpg","suit_handbook_detail.html","image/suitHandBook/03Together/0301A.jpg","花仙米维拉"),
(NULL,"image/suitHandBook/03Together/0302.jpg","suit_handbook_detail.html","image/suitHandBook/03Together/0302A.jpg","喵咪绘本簿"),
(NULL,"image/suitHandBook/03Together/0303.jpg","suit_handbook_detail.html","image/suitHandBook/03Together/0303A.jpg","戒衣女侠"),
(NULL,"image/suitHandBook/03Together/0304.jpg","suit_handbook_detail.html","image/suitHandBook/03Together/0304A.jpg","童话萌萝"),
(NULL,"image/suitHandBook/03Together/0305.jpg","suit_handbook_detail.html","image/suitHandBook/03Together/0305A.jpg","水墨抄"),
(NULL,"image/suitHandBook/03Together/0306.jpg","suit_handbook_detail.html","image/suitHandBook/03Together/0306A.jpg","秋水芙蓉"),
(NULL,"image/suitHandBook/03Together/0307.jpg","suit_handbook_detail.html","image/suitHandBook/03Together/0307A.jpg","梦幻礼服"),
(NULL,"image/suitHandBook/03Together/0308.jpg","suit_handbook_detail.html","image/suitHandBook/03Together/0308A.jpg","恋爱法则");

CREATE TABLE suit_miracle(
    suitId INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64),
    detailHref VARCHAR(32),
    detailSrc VARCHAR(64),
    suitName VARCHAR(16)
);
INSERT INTO suit_miracle VALUES
(NULL,"image/suitHandBook/04Miracle/0401.jpg","suit_handbook_detail.html","image/suitHandBook/04Miracle/0401A.jpg","与子成说"),
(NULL,"image/suitHandBook/04Miracle/0402.jpg","suit_handbook_detail.html","image/suitHandBook/04Miracle/0402A.jpg","缘定今生"),
(NULL,"image/suitHandBook/04Miracle/0403.jpg","suit_handbook_detail.html","image/suitHandBook/04Miracle/0403A.jpg","紫藤花誓言"),
(NULL,"image/suitHandBook/04Miracle/0404.jpg","suit_handbook_detail.html","image/suitHandBook/04Miracle/0404A.jpg","喜绣缘"),
(NULL,"image/suitHandBook/04Miracle/0405.jpg","suit_handbook_detail.html","image/suitHandBook/04Miracle/0405A.jpg","童心爱恋"),
(NULL,"image/suitHandBook/04Miracle/0406.jpg","suit_handbook_detail.html","image/suitHandBook/04Miracle/0406A.jpg","美梦成真"),
(NULL,"image/suitHandBook/04Miracle/0407.jpg","suit_handbook_detail.html","image/suitHandBook/04Miracle/0407A.jpg","花架童话");
CREATE TABLE suit_stars(
    suitId INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64),
    detailHref VARCHAR(32),
    detailSrc VARCHAR(64),
    suitName VARCHAR(16)
);
INSERT INTO suit_stars VALUES
(NULL,"image/suitHandBook/05Stars/0501.jpg","suit_handbook_detail.html","image/suitHandBook/05Stars/0501A.jpg","心月狐"),
(NULL,"image/suitHandBook/05Stars/0502.jpg","suit_handbook_detail.html","image/suitHandBook/05Stars/0502A.jpg","亢金龙");

CREATE TABLE suit_apple(
    suitId INT PRIMARY KEY AUTO_INCREMENT,
    src VARCHAR(64),
    detailHref VARCHAR(32),
    detailSrc VARCHAR(64),
    suitName VARCHAR(16)
);
INSERT INTO suit_apple VALUES
(NULL,"image/suitHandBook/06Apple/0601.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0601A.jpg","三叶恋"),
(NULL,"image/suitHandBook/06Apple/0602.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0602A.jpg","跃动少女"),
(NULL,"image/suitHandBook/06Apple/0603.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0603A.jpg","福祉铃喵"),
(NULL,"image/suitHandBook/06Apple/0604.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0604A.jpg","芸香柠檬"),
(NULL,"image/suitHandBook/06Apple/0605.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0605A.jpg","羁绊妖犬"),
(NULL,"image/suitHandBook/06Apple/0606.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0606A.jpg","森女羊"),
(NULL,"image/suitHandBook/06Apple/0607.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0607A.jpg","森女麋鹿"),
(NULL,"image/suitHandBook/06Apple/0608.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0608A.jpg","青春旋律"),
(NULL,"image/suitHandBook/06Apple/0609.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0609A.jpg","巧克力女仆"),
(NULL,"image/suitHandBook/06Apple/0610.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0610A.jpg","暮霭苍狼"),
(NULL,"image/suitHandBook/06Apple/0611.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0611A.jpg","慕冬天使"),
(NULL,"image/suitHandBook/06Apple/0612.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0612A.jpg","魔力星"),
(NULL,"image/suitHandBook/06Apple/0613.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0613A.jpg","美食外卖员"),
(NULL,"image/suitHandBook/06Apple/0614.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0614A.jpg","漫纱轻舞"),
(NULL,"image/suitHandBook/06Apple/0615.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0615A.jpg","鹿灵枝"),
(NULL,"image/suitHandBook/06Apple/0616.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0616A.jpg","荒原的花"),
(NULL,"image/suitHandBook/06Apple/0617.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0617A.jpg","滑板少女"),
(NULL,"image/suitHandBook/06Apple/0618.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0618A.jpg","黑白名媛"),
(NULL,"image/suitHandBook/06Apple/0619.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0619A.jpg","钻石人鱼"),
(NULL,"image/suitHandBook/06Apple/0620.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0620A.jpg","甜美花季"),
(NULL,"image/suitHandBook/06Apple/0621.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0621A.jpg","时空偶像"),
(NULL,"image/suitHandBook/06Apple/0601.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0601A.jpg","三叶恋"),
(NULL,"image/suitHandBook/06Apple/0622.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0622A.jpg","采撷草莓"),
(NULL,"image/suitHandBook/06Apple/0615.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0615A.jpg","鹿灵枝"),
(NULL,"image/suitHandBook/06Apple/0623.jpg","suit_handbook_detail.html","image/suitHandBook/06Apple/0623A.jpg","冬恋奇迹");


--新闻资讯
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
--数据为在sql文件中