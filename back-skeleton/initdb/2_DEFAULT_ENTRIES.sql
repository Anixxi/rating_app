INSERT INTO Catégories (nom_catégorie) VALUES
                                           ('Film'),
                                           ('Restaurant'),
                                           ('Lieu');

INSERT INTO Films (titre, réalisateur, année, synopsis, note_moyenne, nombre_avis, catégorie_id) VALUES
    ('Inception', 'Christopher Nolan', 2010, 'Dom Cobb est un voleur expérimenté, le meilleur dans l art dangereux de lextraction : voler les secrets les plus intimes enfouis au plus profond du subconscient durant une phase de rêve, lorsque lesprit est le plus vulnérable.', 4.5, 100, 1),
('Pulp Fiction', 'Quentin Tarantino', 1994, 'À Los Angeles, Vincent Vega et Jules Winnfield, deux petits malfrats ayant des problèmes de circulation sanguine, sont en quête d’un mystérieux porte-documents.', 4.3, 85, 1);

INSERT INTO Restaurants (nom, adresse, ville, code_postal, téléphone, note_moyenne, nombre_avis, catégorie_id) VALUES
('Le Petit Bistro', '123 Rue de la Paix', 'Paris', '75001', '01 23 45 67 89', 4.0, 50, 2),
('La Trattoria', '456 Via Napoli', 'Rome', '00184', '+39 06 12 34 56 78', 4.2, 65, 2);

INSERT INTO Lieux (nom, type, adresse, ville, code_postal, téléphone, note_moyenne, nombre_avis, catégorie_id) VALUES
('Musée du Louvre', 'Musée', 'Rue de Rivoli', 'Paris', '75001', '01 40 20 53 17', 4.8, 120, 3),
('Central Park', 'Parc', 'New York City', 'New York', '10024', 'N/A', 4.7, 90, 3);

INSERT INTO Avis (utilisateur_id, film_id, restaurant_id, lieu_id, note, commentaire, date_avis) VALUES
(1, 1, NULL, NULL, 4.5, 'Excellent film, un scénario captivant et des effets spéciaux époustouflants !', '2024-02-25'),
(1, NULL, 1, NULL, 4.0, 'Bon restaurant, la cuisine était délicieuse mais le service un peu lent.', '2024-02-26');
