use hw3;

INSERT INTO companies
VALUES (1, 'Global logic', 'Kiev'),
       (2, 'Epam', 'Dnipro'),
       (3, 'SoftServe', 'Kharkiv');

INSERT INTO developers
VALUES (1, 'Maksym Pinchuk', 27, 'male',1),
       (2, 'Anton Aleksakhin', 35, 'male',3),
       (3, 'Inna Kuzmina', 23, 'female',3),
       (4, 'Tatiana Pinchuk', 29, 'female',1),
       (5, 'Mozart Amadey', 17, 'male',2),
       (6, 'Polina Ershova', 28, 'female',2),
       (7, 'Roman Riazanov', 32, 'male',1);
    INSERT INTO skills
VALUES (1, 'Java', 'Junior'),
    (2, 'Java', 'Middle'),
    (3, 'Java', 'Senior'),
    (4, 'C++', 'Junior'),
    (5, 'C++', 'Middle'),
    (6, 'C++', 'Senior'),
    (7, 'C#', 'Junior'),
    (8, 'C#', 'Middle'),
    (9, 'C#', 'Senior'),
    (10, 'JS', 'Junior'),
    (11, 'JS', 'Middle'),
    (12, 'JS', 'Senior');

INSERT INTO projects
VALUES (1, 'alfa', 'cool project'),
       (2, 'security', 'serious project'),
       (3, 'cloud', 'agile cloud sevice'),
       (4, 'sfinks', 'stable bank project'),
       (5, 'croud', 'new social media'),
       (6, 'rumors', 'new twitter'),
       (7, 'topics', 'new instagram');

INSERT INTO developers_projects
VALUES (1, 1),
       (5, 1),
       (3, 2),
       (5, 2),
       (2, 3),
       (4, 4),
       (6, 5),
       (7, 6),
       (1, 7),
       (3, 7),
       (5, 7);

INSERT INTO companies_projects
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (1, 4),
       (2, 5),
       (3, 6),
       (1, 7);

INSERT INTO developers_skills
VALUES (3, 1),
       (1, 2),
       (5, 6),
       (7, 5),
       (6, 3),
       (4, 6),
       (2, 7);


INSERT INTO customers
VALUES (1, 'Omega', 'Kiev'),
       (2, 'Mirny', 'Los-Angeles'),
       (3, 'StarLight', 'New York'),
       (4, 'Belany', 'Las Vegas'),
       (5, 'NnjunJan', 'Sentoza'),
       (6, 'Koala', 'Dnipro'),
       (7, 'Big Bus', 'London');

INSERT INTO customers_projects
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7);