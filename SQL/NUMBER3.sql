CREATE DATABASE uSERS_WORK;
USE USERS_WORK;
SET FOREIGN_KEY_CHECKS = 1;
CREATE TABLE USERS(
ID INT UNSIGNED auto_increment PRIMARY KEY,
FIRST_NAME VARCHAR(20) not NULL,
LAST_NAME VARCHAR(20) NOT NULL,
PROFESSION VARCHAR(20) NOT NULL,
GIVE_MONEY INT unsigned NOT NULL
);
CREATE TABLE USERS_DOWN(
ID INT UNSIGNED auto_increment PRIMARY KEY,
FIRST_NAME VARCHAR(20) NOT NULL,
LAST_NAME VARCHAR(20) NOT NULL,
PROFESSION VARCHAR(20) NOT NULL,
GIVE_MONEY INT unsigned NOT NULL
);
CREATE TABLE USERS_UP(
ID INT UNSIGNED auto_increment PRIMARY KEY,
FIRST_NAME VARCHAR(20) NOT NULL,
LAST_NAME VARCHAR(20) NOT NULL,
PROFESSION VARCHAR(20) NOT NULL,
GIVE_MONEY INT unsigned NOT NULL
);
CREATE TABLE RESULT(
USERS_ID INT unsigned NOT NULL,
USERS_DOWN INT UNSIGNED,
USERS_UP INT UNSIGNED,
foreign key (USERS_ID) REFERENCES USERS(ID),
FOREIGN KEY (USERS_DOWN) REFERENCES USERS_DOWN(ID),
FOREIGN KEY (USERS_UP) REFERENCES USERS_UP(ID)
);

insert INTO USERS (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"iVAN","ANOSIKOV","PROGRAMMER",50000);
insert INTO USERS (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"KOSTY","TUSHKIN","DESIGNER",50000);
insert INTO USERS (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"EVGENII","RATOV","FRONTEND",35000);
insert INTO USERS (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"MASHA","MAEVA","DEVELOPER",45000);
insert INTO USERS (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"LENA","TURNIKSOVA","TEACHER",40000);

insert INTO USERS_DOWN (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"ARTEM","KULKOV","ASSISTANT",20000);
insert INTO USERS_DOWN (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"ROMAN","MIKIN","ASSISTANT",20000);
insert INTO USERS_DOWN (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"SERGEI","POPENKO","MLADSHII HELPER",40000);
insert INTO USERS_DOWN (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"IGOR","NOSIKOV","HELPER",10000);

insert INTO USERS_UP (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"EVGENII","RAKOV","TEAMlEAD",100000);
insert INTO USERS_UP (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"VLADISLAV","NAZIN","SENIOUR",80000);
insert INTO USERS_UP (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"IRINA","RAMOVA","JOURNALIST",45000);
insert INTO USERS_UP (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"ANNA","FIRSOVA","DIRECTOR",50000);
insert INTO USERS_UP (ID,FIRST_NAME,lAST_NAME,PROFESSION,GIVE_MONEY) VALUES (NULL,"TIMUR","TRESKIN","BIG BOSS",150000);

INSERT INTO RESULT (USERS_ID,USERS_DOWN,USERS_UP) VALUES (1,2,3);
INSERT INTO RESULT (USERS_ID,USERS_DOWN) VALUES (1,1);
INSERT INTO RESULT (USERS_ID,USERS_DOWN) VALUES (2,1);
INSERT INTO RESULT (USERS_ID,USERS_DOWN,USERS_UP) VALUES (3,3,1);
INSERT INTO RESULT (USERS_ID,USERS_DOWN) VALUES (3,4);

SELECT users_down.FIRST_NAME,users_down.Last_name,USERS_DOWN.PROFESSION,USERS_DOWN.GIVE_MONEY FROM users,USERS_DOWN
JOIN RESULT ON Users_down.id=RESULT.uSERS_DOWN 
WHERE USERS.ID=3 && result.users_id=users.id;