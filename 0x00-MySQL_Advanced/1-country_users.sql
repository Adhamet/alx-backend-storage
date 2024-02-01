-- Script that creates a table users
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    country ENUM('US', 'CO', 'TN') DEFAULT 'US' NOT NULL
);