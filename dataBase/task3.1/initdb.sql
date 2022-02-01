DROP DATABASE IF EXISTS hw3;
CREATE DATABASE IF NOT EXISTS hw3;

use hw3;
CREATE TABLE companies
(
    company_id bigint      NOT NULL AUTO_INCREMENT,
    name       varchar(50) NOT NULL,
    city       varchar(50) DEFAULT NULL,
    PRIMARY KEY (company_id)
);

CREATE TABLE developers
(
    developer_id bigint      NOT NULL AUTO_INCREMENT,
    name         varchar(50) NOT NULL,
    age          int DEFAULT NULL,
    sex          varchar(50) NOT NULL,
    company_id   bigint         NOT NULL,
    PRIMARY KEY (developer_id),
    FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

CREATE TABLE skills
(
    skill_id bigint                            NOT NULL AUTO_INCREMENT,
    language varchar(50)  NOT NULL,
    level    varchar(50) NOT NULL,
    PRIMARY KEY (skill_id)
);

CREATE TABLE developers_skills
(
    developer_id bigint NOT NULL,
    skill_id     bigint NOT NULL,
    PRIMARY KEY (developer_id, skill_id),
    FOREIGN KEY (developer_id) REFERENCES developers (developer_id),
    FOREIGN KEY (skill_id) REFERENCES skills (skill_id)
);

CREATE TABLE projects
(
    project_id  bigint      NOT NULL AUTO_INCREMENT,
    name        varchar(50) NOT NULL,
    description text,
    PRIMARY KEY (project_id)
);

CREATE TABLE developers_projects
(
    developer_id bigint NOT NULL,
    project_id   bigint NOT NULL,
    PRIMARY KEY (developer_id, project_id),
    FOREIGN KEY (developer_id) REFERENCES developers (developer_id),
    FOREIGN KEY (project_id) REFERENCES projects (project_id)
);

CREATE TABLE companies_projects
(
    company_id bigint NOT NULL,
    project_id bigint NOT NULL,
    PRIMARY KEY (company_id, project_id),
    KEY id_project (project_id),
    FOREIGN KEY (company_id) REFERENCES companies (company_id),
    FOREIGN KEY (project_id) REFERENCES projects (project_id)
);

CREATE TABLE customers
(
    customer_id bigint      NOT NULL AUTO_INCREMENT,
    name        varchar(50) NOT NULL,
    city        varchar(50) DEFAULT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE customers_projects
(
    customer_id bigint NOT NULL,
    project_id  bigint NOT NULL,
    PRIMARY KEY (customer_id, project_id),
    KEY id_project (project_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
    FOREIGN KEY (project_id) REFERENCES projects (project_id)
);