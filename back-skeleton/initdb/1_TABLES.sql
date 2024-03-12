-- Table utilisateurs
CREATE TABLE utilisateurs (
                              id SERIAL PRIMARY KEY,
                              nom VARCHAR(100),
                              email VARCHAR(100) UNIQUE,
                              mot_de_passe VARCHAR(100),
                              est_admin BOOLEAN DEFAULT FALSE
);

-- Table restaurant
CREATE TABLE restaurant (
                            id SERIAL PRIMARY KEY,
                            nom VARCHAR(100),
                            adresse VARCHAR(255),
                            ville VARCHAR(100),
                            pays VARCHAR(100),
                            image VARCHAR(255) -- Chemin d'accès vers l'image du restaurant
);

-- Table lieux
CREATE TABLE lieux (
                       id SERIAL PRIMARY KEY,
                       nom VARCHAR(100),
                       adresse VARCHAR(255),
                       ville VARCHAR(100),
                       pays VARCHAR(100),
                       image VARCHAR(255) -- Chemin d'accès vers l'image du lieu
);

-- Table films
CREATE TABLE films (
                       id SERIAL PRIMARY KEY,
                       titre VARCHAR(100),
                       realisateur VARCHAR(100),
                       annee_de_sortie INT,
                       genre VARCHAR(100),
                       image VARCHAR(255) -- Chemin d'accès vers l'image du film
);

-- Table categories
CREATE TABLE categories (
                            id SERIAL PRIMARY KEY,
                            nom VARCHAR(100)
);

-- Table avis
CREATE TABLE avis (
                      id SERIAL PRIMARY KEY,
                      utilisateur_id INT,
                      FOREIGN KEY (utilisateur_id) REFERENCES utilisateurs(id),
                      restaurant_id INT,
                      FOREIGN KEY (restaurant_id) REFERENCES restaurant(id),
                      lieu_id INT,
                      FOREIGN KEY (lieu_id) REFERENCES lieux(id),
                      film_id INT,
                      FOREIGN KEY (film_id) REFERENCES films(id),
                      etoile INT, -- Nombre d'étoiles attribuées à l'avis
                      commentaire TEXT,
                      date_avis DATE
);
