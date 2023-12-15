DROP TABLE IF EXISTS tag ;

CREATE TABLE tag
(
   id          INTEGER PRIMARY KEY  ,
   nev         VARCHAR(50)          ,
   email       VARCHAR(60)          ,       
   telefon     CHAR(11)             ,
   tipus       INTEGER
) ;

INSERT INTO tag VALUES(1000,'Kiss György'    ,'kiss.gyuri@gmail.com'    ,'06205060170',1) ;
INSERT INTO tag VALUES(1001,'Horváth Gábor'  ,'horvath.gabi@gmail.com'  ,'06205060171',1) ;
INSERT INTO tag VALUES(1002,'Németh Anna'    ,'nemeth.anna@gmail.com'   ,'06205060172',1) ;

SELECT * FROM tag ;