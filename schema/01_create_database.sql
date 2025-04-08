-- Création de la base de données
CREATE DATABASE IF NOT EXISTS tifosi
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

-- Création de l'utilisateur et attribution des droits
CREATE USER IF NOT EXISTS 'tifosi'@'localhost' IDENTIFIED BY 'tifosi123';
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;

-- Utilisation de la base de données
USE tifosi; 