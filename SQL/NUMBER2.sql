CREATE DATABASE userS_WORK;
use users_work;
CREATE TABLE USERS (
	id int unsigned auto_increment primary key,
	FIRST_name varchar(20) NOT NULL,
	LAST_NAME VARCHAR(20) NOT NULL,
	PROFESSION VARCHAR(30) NOT NULL,
	GIVE_MONEY int UNSIGNED NOT NULL
);
 INSERT INTO USERS (ID,FIRST_NAME,lAST_NAME, profession,give_money) values (null,"EVGENII","PSEVDOV","INJENER",40000);
 INSERT INTO USERS (ID,FIRST_NAME,lAST_NAME, profession,give_money) values (null,"SERGEI","ANOKIN","UCHITEL",35000);
 INSERT INTO USERS (ID,FIRST_NAME,lAST_NAME, profession,give_money) values (null,"IRINA","KUSTOVA","POVAR",30000);
 INSERT INTO USERS (ID,FIRST_NAME,lAST_NAME, profession,give_money) values (null,"MARINA","BOGATKINA","GRUZCHIK",25000);
 INSERT INTO USERS (ID,FIRST_NAME,lAST_NAME, profession,give_money) values (null,"KOSTY","BORDANOV","UBORSHIK",20000);
select* from users WHERE GIVE_MONEY>30000;
SELECT* FROM USERS WHERE GIVE_MONEY>30000 AND PROFESSION="INJENER";
