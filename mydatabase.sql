CREATE DATABASE mydatabase;

use mydatabase;

CREATE TABLE Members (
    id INT NOT NULL AUTO_INCREMENT, -- unicité + auto incrémentation
    nom VARCHAR(50), -- default 'said' 
    pseudo VARCHAR(50), -- nullable emty column to add nothing 
    Date_inscri DATE, -- default date.now() 
    PRIMARY KEY (id)
);

INSERT INTO
    Members
    -- DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY);
VALUES (
        1,
        "sami",
        "kung",
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 10 DAY
        )
    ),
    (
        2,
        "hassan",
        "Hulk",
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 20 DAY
        )
    ),
    (
        3,
        "kamal",
        "food_man",
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        )
    ),
    (
        4,
        "karim",
        "Big Foot",
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 11 DAY
        )
    ),
    (
        5,
        "jack",
        "monster_ko",
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 19 DAY
        )
    );

CREATE TABLE abonnement (
    id int,
    date_start DATE,
    date_end DATE,
    type_abon VARCHAR(40),
    member_id INT,
    PRIMARY KEY (id),
    Foreign Key (member_id) REFERENCES members (id)
);

-- DATE_SUB(CURRENT_DATE(), INTERVAL 60 DAY)
-- DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)

-- DATE_ADD(CURRENT_DATE(), INTERVAL 30 DAY)
-- DATE_ADD(CURRENT_DATE(), INTERVAL 365 DAY)

INSERT INTO
    abonnement
VALUES (
        1,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 60 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        ),
        "mensuel",
        1
    ),
    (
        2,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        ),
        "mensuel",
        2
    ),
    (
        3,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        ),
        "mensuel",
        5
    ),
    (
        4,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 365 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        ),
        "annuellement",
        3
    ),
    (
        5,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 365 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        ),
        "annuellement",
        4
    );

CREATE TABLE Games (
    title VARCHAR(60),
    genre VARCHAR(60),
    date_cre date,
    id INT NOT NULL AUTO_INCREMENT,
    studio VARCHAR(90),
    multijour boolean,
    Emprunt_id INT,
    PRIMARY KEY (id),
    Foreign Key (Emprunt_id) REFERENCES Emprunt (id)
);

INSERT INTO
    Games
VALUES (
        "Call of Duty",
        "War",
        "2020-04-02",
        1,
        "EA",
        false,
        1
    ),
    (
        "King of Fighters",
        "kombat",
        "2002-09-02",
        2,
        "Konami",
        true,
        2
    ),
    (
        "Mortal Kombat",
        "kombat",
        "2023-04-02",
        3,
        "konami",
        true,
        2
    ),
    (
        "FIFA 25",
        "FootBall",
        "2025-01-01",
        4,
        "EA sport",
        false,
        3
    );

CREATE TABLE tournois (
    id INT NOT NULL AUTO_INCREMENT,
    name_tournois VARCHAR(90),
    date_start date,
    date_end date,
    games_id INT,
    PRIMARY KEY (id),
    Foreign Key (games_id) REFERENCES games (id)
);

INSERT INTO
    tournois
VALUES (
        1,
        "world cup",
        "2025-10-12",
        "2025-12-30",
        1
    ),
    (
        2,
        "champions",
        "2025-10-12",
        "2026-02-12",
        2
    ),
    (
        3,
        "world cup",
        "2025-10-12",
        "2026-03-04",
        4
    ),
    (
        4,
        "world cup",
        "2025-10-12",
        "2026-5-23",
        4
    );

CREATE TABLE Emprunt (
    id INT NOT NULL AUTO_INCREMENT,
    date_prevue DATE,
    date_emprunt DATE,
    prix float,
    member_id INT,
    game_id INT,
    PRIMARY KEY (id),
    Foreign Key (member_id) REFERENCES members (id),
    Foreign Key (game_id) REFERENCES Games (id)
);

INSERT INTO
    Emprunt
VALUES (
        1,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 10 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 30 DAY
        ),
        12.99,
        1,
        3
    ),
    (
        2,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 7 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 12 DAY
        ),
        90,
        2,
        2
    ),
    (
        3,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 17 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 140 DAY
        ),
        73.33,
        1,
        1
    ),
    (
        4,
        DATE_SUB(
            CURRENT_DATE(),
            INTERVAL 20 DAY
        ),
        DATE_ADD(
            CURRENT_DATE(),
            INTERVAL 80 DAY
        ),
        120.99,
        4,
        3
    );

CREATE TABLE Rsult_members (
    id INT NOT NULL AUTO_INCREMENT,
    secore INT,
    classement INT,
    tournois_id INT,
    member_id INT,
    PRIMARY KEY (id),
    Foreign Key (member_id) REFERENCES members (id),
    Foreign Key (tournois_id) REFERENCES tournois (id)
);

INSERT INTO
    Rsult_members
VALUES (1, 190, 4, 1, 3),
    (2, 201, 3, 1, 2),
    (3, 390, 2, 1, 4),
    (4, 450, 1, 1, 1);



SELECT * FROM Emprunt e INNER JOIN members m ON e.game_id = m.
    --   SELECT * FROM abonnement WHERE type_abon="annuellement";
    --   SELECT member_id from games WHERE pseudo="kung";