CREATE DATABASE footballhub;

USE footballhub;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    password VARCHAR(255),
    role ENUM('admin','user') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(100),
    logo VARCHAR(255),
    country VARCHAR(100),
    stadium VARCHAR(100),
    coach VARCHAR(100)
);

CREATE TABLE players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team_id INT,
    player_name VARCHAR(100),
    age INT,
    position VARCHAR(50),
    nationality VARCHAR(50),
    photo VARCHAR(255),
    FOREIGN KEY(team_id) REFERENCES teams(id)
);

CREATE TABLE fixtures (
    id INT AUTO_INCREMENT PRIMARY KEY,
    home_team INT,
    away_team INT,
    match_date DATETIME,
    stadium VARCHAR(100),
    status VARCHAR(50),
    home_score INT DEFAULT 0,
    away_score INT DEFAULT 0
);

CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    image VARCHAR(255),
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE favorites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    team_id INT
);