-- Exemples de données pour la table utilisateurs
INSERT INTO utilisateurs (nom, email, mot_de_passe, est_admin) VALUES
('Alice', 'alice@example.com', 'motdepasse123', TRUE),
('Bob', 'bob@example.com', 'bobpassword', FALSE),
('Charlie', 'charlie@example.com', 'charliepass', FALSE);

-- Exemples de données pour la table restaurant
INSERT INTO restaurant (nom, adresse, ville, pays, image) VALUES
('Restaurant A', '123 Rue de la Paix', 'Paris', 'France', 'images/restaurant_a.jpg'),
('Restaurant B', '456 Main Street', 'New York', 'USA', 'images/restaurant_b.jpg'),
('Restaurant C', '789 High Street', 'London', 'UK', 'images/restaurant_c.jpg');

-- Exemples de données pour la table lieux
INSERT INTO lieux (nom, adresse, ville, pays, image) VALUES
('Lieu A', '123 Rue de la Liberté', 'Paris', 'France', 'images/lieu_a.jpg'),
('Lieu B', '456 Elm Street', 'Los Angeles', 'USA', 'images/lieu_b.jpg'),
('Lieu C', '789 Queen Street', 'London', 'UK', 'images/lieu_c.jpg');

-- Exemples de données pour la table films
INSERT INTO films (titre, realisateur, annee_de_sortie, genre, image) VALUES
('Film A', 'Réalisateur A', 2020, 'Action', 'images/film_a.jpg'),
('Film B', 'Réalisateur B', 2019, 'Comédie', 'images/film_b.jpg'),
('Film C', 'Réalisateur C', 2021, 'Drame', 'images/film_c.jpg');

-- Exemples de données pour la table categories
INSERT INTO categories (nom) VALUES
('Catégorie 1'),
('Catégorie 2'),
('Catégorie 3');

-- Exemples de données pour la table avis
INSERT INTO avis (utilisateur_id, restaurant_id, lieu_id, film_id, etoile, commentaire, date_avis) VALUES
(1, 1, NULL, NULL, 5, 'Excellent service et plats délicieux.', '2024-03-12'),
(2, NULL, 1, NULL, 4, 'Un lieu charmant avec une atmosphère agréable.', '2024-03-11'),
(3, NULL, NULL, 1, 3, 'Bon film, mais la fin était un peu décevante.', '2024-03-10');
