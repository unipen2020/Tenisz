DROP TABLE IF EXISTS palya ;
DROP TABLE IF EXISTS tag   ;

CREATE TABLE tag
(
   id          INTEGER PRIMARY KEY  ,
   nev         VARCHAR(50)          ,
   email       VARCHAR(60)          ,       
   telefon     CHAR(11)             ,
   tipus       INTEGER
) ;

CREATE TABLE palya
(
   id          INTEGER PRIMARY KEY  ,
   latitude    FLOAT NOT NULL       ,
   longitude   FLOAT NOT NULL 
) ;


INSERT INTO tag VALUES(1000,'Kiss György'    ,'kiss.gyuri@gmail.com'    ,'06205060170',1) ;
INSERT INTO tag VALUES(1001,'Horváth Gábor'  ,'horvath.gabi@gmail.com'  ,'06205060171',1) ;
INSERT INTO tag VALUES(1002,'Németh Anna'    ,'nemeth.anna@gmail.com'   ,'06205060172',1) ;


INSERT INTO palya VALUES(1,100,100) ;
INSERT INTO palya VALUES(2,100,100) ;
INSERT INTO palya VALUES(3,100,100) ;
INSERT INTO palya VALUES(4,100,100) ;
INSERT INTO palya VALUES(5,100,100) ;
INSERT INTO palya VALUES(6,100,100) ;

SELECT * FROM tag ;