USE tifosi;

-- Insertion des marques
INSERT INTO marque (id_marque, nom_marque) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- Insertion des boissons
INSERT INTO boisson (id_boisson, nom_boisson, prix, id_marque) VALUES
(1, 'Coca-cola zéro', 2.50, 1),
(2, 'Coca-cola original', 2.50, 1),
(3, 'Fanta citron', 2.50, 1),
(4, 'Fanta orange', 2.50, 1),
(5, 'Capri-sun', 2.50, 1),
(6, 'Pepsi', 2.50, 4),
(7, 'Pepsi Max Zéro', 2.50, 4),
(8, 'Lipton zéro citron', 2.50, 4),
(9, 'Lipton Peach', 2.50, 4),
(10, 'Monster energy ultra gold', 3.50, 3),
(11, 'Monster energy ultra blue', 3.50, 3),
(12, 'Eau de source', 1.50, 2);

-- Insertion des ingrédients
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Mozarella');

-- Insertion des focaccias
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix, description) VALUES
(1, 'Mozaccia', 9.80, 'Base tomate avec mozarella'),
(2, 'Gorgonzollaccia', 10.80, 'Base tomate avec gorgonzola'),
(3, 'Raclaccia', 8.90, 'Base tomate avec raclette'),
(4, 'Emmentalaccia', 9.80, 'Base crème avec emmental'),
(5, 'Tradizione', 8.90, 'Focaccia traditionnelle'),
(6, 'Hawaienne', 11.20, 'Base tomate avec ananas'),
(7, 'Américaine', 10.80, 'Base tomate avec bacon'),
(8, 'Paysanne', 12.80, 'Base crème avec fromage de chèvre');

-- Insertion des relations focaccia-ingredient
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES
-- Mozaccia
(1, 5), -- Base tomate
(1, 25), -- Mozarella
(1, 9), -- Cresson
(1, 13), -- Jambon fumé
(1, 1), -- Ail
(1, 3), -- Artichaut
(1, 7), -- Champignon
(1, 18), -- Parmesan
(1, 20), -- Poivre
(1, 16), -- Olive noire

-- Gorgonzollaccia
(2, 5), -- Base tomate
(2, 11), -- Gorgonzola
(2, 9), -- Cresson
(2, 1), -- Ail
(2, 7), -- Champignon
(2, 18), -- Parmesan
(2, 20), -- Poivre
(2, 17), -- Olive verte

-- Raclaccia
(3, 5), -- Base tomate
(3, 22), -- Raclette
(3, 9), -- Cresson
(3, 1), -- Ail
(3, 7), -- Champignon
(3, 18), -- Parmesan
(3, 20), -- Poivre

-- Emmentalaccia
(4, 6), -- Base crème
(4, 10), -- Emmental
(4, 9), -- Cresson
(4, 7), -- Champignon
(4, 18), -- Parmesan
(4, 20), -- Poivre
(4, 15), -- Oignon

-- Tradizione
(5, 5), -- Base tomate
(5, 25), -- Mozarella
(5, 9), -- Cresson
(5, 13), -- Jambon fumé
(5, 7), -- Champignon
(5, 18), -- Parmesan
(5, 20), -- Poivre
(5, 16), -- Olive noire

-- Hawaienne
(6, 5), -- Base tomate
(6, 25), -- Mozarella
(6, 9), -- Cresson
(6, 4), -- Bacon
(6, 2), -- Ananas
(6, 19), -- Piment
(6, 18), -- Parmesan
(6, 20), -- Poivre
(6, 16), -- Olive noire

-- Américaine
(7, 5), -- Base tomate
(7, 25), -- Mozarella
(7, 9), -- Cresson
(7, 4), -- Bacon
(7, 21), -- Pomme de terre
(7, 18), -- Parmesan
(7, 20), -- Poivre
(7, 16), -- Olive noire

-- Paysanne
(8, 6), -- Base crème
(8, 8), -- Chevre
(8, 9), -- Cresson
(8, 21), -- Pomme de terre
(8, 13), -- Jambon fumé
(8, 1), -- Ail
(8, 3), -- Artichaut
(8, 7), -- Champignon
(8, 18), -- Parmesan
(8, 20), -- Poivre
(8, 16), -- Olive noire
(8, 14); -- Oeuf 