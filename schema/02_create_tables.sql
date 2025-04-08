USE tifosi;

-- Table des marques
CREATE TABLE IF NOT EXISTS marque (
    id_marque INT PRIMARY KEY AUTO_INCREMENT,
    nom_marque VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- Table des boissons
CREATE TABLE IF NOT EXISTS boisson (
    id_boisson INT PRIMARY KEY AUTO_INCREMENT,
    nom_boisson VARCHAR(100) NOT NULL,
    prix DECIMAL(10,2) NOT NULL CHECK (prix >= 0),
    id_marque INT NOT NULL,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
) ENGINE=InnoDB;

-- Table des ingrédients
CREATE TABLE IF NOT EXISTS ingredient (
    id_ingredient INT PRIMARY KEY AUTO_INCREMENT,
    nom_ingredient VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- Table des focaccias
CREATE TABLE IF NOT EXISTS focaccia (
    id_focaccia INT PRIMARY KEY AUTO_INCREMENT,
    nom_focaccia VARCHAR(100) NOT NULL UNIQUE,
    prix DECIMAL(10,2) NOT NULL CHECK (prix >= 0),
    description TEXT
) ENGINE=InnoDB;

-- Table de liaison focaccia_ingredient (relation many-to-many)
CREATE TABLE IF NOT EXISTS focaccia_ingredient (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
) ENGINE=InnoDB; 