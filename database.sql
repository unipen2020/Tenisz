DROP TABLE IF EXISTS foglalas ;
DROP TABLE IF EXISTS palya    ;
DROP TABLE IF EXISTS tag      ;


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

CREATE TABLE foglalas
(
   tag_id       INTEGER ,
   palya_id     INTEGER ,
   datum        DATE    ,
   ora          INTEGER ,
   PRIMARY KEY(tag_id,palya_id,datum,ora)                 ,
   FOREIGN KEY(tag_id)           REFERENCES tag(id)       ,
   FOREIGN KEY(palya_id)         REFERENCES palya(id) 
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
INSERT INTO palya VALUES(7,100,100) ;
INSERT INTO palya VALUES(8,100,100) ;


SELECT * FROM tag ;

INSERT INTO foglalas VALUES(1000,1,'2023.12.15',10) ;
INSERT INTO foglalas VALUES(1000,1,'2023.12.15',11) ; 
INSERT INTO foglalas VALUES(1001,1,'2023.12.16',14) ;
INSERT INTO foglalas VALUES(1001,1,'2023.12.16',15) ;

SELECT * FROM foglalas ;
