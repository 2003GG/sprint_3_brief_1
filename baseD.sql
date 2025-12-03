CREATE DATABASE GamersEnvironement;
use GamersEnvironement;

CREATE TABLE Member(
    id int,
    nom VARCHAR(50),
    pseudo VARCHAR(50),
    Date_inscri DATE,
);
INSERT INTO Member;
VALUES (1,"yassin","monster_ko","2025-02-12"),
       (2,"hassan","Hulk","2025-01-02")
       (3,"kamal","food_man","2025-01-03")
       (4,"karim","Big Foot","2025-01-05")
       (5,"jack","monster_ko","2025-04-23")




CREATE TABLE abonnement(
 id int
 date_start date,
 date_end date,
 type_abon VARCHAR(40),

);
INSERT INTO abonnement;
VALUES (1,"2025-02-12","2025-05-12","mensuel"),
       (2,"2025-01-02","2025-09-23","mensuel"),
       (3,"2025-01-03","2025-06-14","mensuel"),
       (4,"2025-01-05","2026-01-05","annuellement"),
       (5,"2025-04-23","2026-04-23","annuellement");



CREATE TABLE Games(
    title VARCHAR(60),
    genre VARCHAR(60),
    date_cre date,
    id int,
    studio VARCHAR(90),
    multijour boolean
);

INSERT TABLE Games;
VALUES("Call of Duty","War","2020-04-02",1,"EA",false),
("King of Fighters","kombat","2002-09-02",2,"Konami",true),
("Mortal Kombat","kombat","2023-04-02",3,"konami",true),
("FIFA 25","FootBall","2025-01-01",4,"EA sport",false),


CREATE TABLE tournois(
    id int,
    name_tournois VARCHAR(90),
    date_start date,
    date_end date,
);
INSERT TABLE tournois;
VALUES(1,"world cup","2025-10-12","2025-12-30"),
(2,"champions","2025-10-12","2026-02-12"),
(3,"world cup","2025-10-12","2026-03-04"),
(4,"world cup","2025-10-12","2026-5-23"),

CREATE TABLE Emprunt(
   id int,
   date_prevue DATE,
   date_emprunt DATE,
   prix float
);

CREATE TABLE result(
secore int,
classement int
);