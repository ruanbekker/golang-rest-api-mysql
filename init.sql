CREATE DATABASE IF NOT EXISTS rest_api_example;
CREATE TABLE IF NOT EXISTS rest_api_example.users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);