CREATE TABLE Films (
                       film_id SERIAL PRIMARY KEY,
                       titre VARCHAR(255),
                       réalisateur VARCHAR(255),
                       année INT,
                       synopsis TEXT,
                       note_moyenne DECIMAL(3, 2),
                       nombre_avis INT,
                       catégorie_id INT,
                       FOREIGN KEY (catégorie_id) REFERENCES Catégories(catégorie_id)
);


CREATE TABLE Restaurants (
                             restaurant_id SERIAL PRIMARY KEY,
                             nom VARCHAR(255),
                             adresse VARCHAR(255),
                             ville VARCHAR(255),
                             code_postal VARCHAR(10),
                             téléphone VARCHAR(15),
                             note_moyenne DECIMAL(3, 2),
                             nombre_avis INT,
                             catégorie_id INT,
                             FOREIGN KEY (catégorie_id) REFERENCES Catégories(catégorie_id)
);


CREATE TABLE Lieux (
                       lieu_id SERIAL PRIMARY KEY,
                       nom VARCHAR(255),
                       type VARCHAR(255),
                       adresse VARCHAR(255),
                       ville VARCHAR(255),
                       code_postal VARCHAR(10),
                       téléphone VARCHAR(15),
                       note_moyenne DECIMAL(3, 2),
                       nombre_avis INT,
                       catégorie_id INT,
                       FOREIGN KEY (catégorie_id) REFERENCES Catégories(catégorie_id)
);


CREATE TABLE Catégories (
                            catégorie_id SERIAL PRIMARY KEY,
                            nom_catégorie VARCHAR(255)
);

CREATE TABLE Avis (
                      avis_id SERIAL PRIMARY KEY,
                      utilisateur_id INT,
                      film_id INT,
                      restaurant_id INT,
                      lieu_id INT,
                      note DECIMAL(3, 2),
                      commentaire TEXT,
                      date_avis DATE,
                      FOREIGN KEY (utilisateur_id) REFERENCES Utilisateurs(utilisateur_id),
                      FOREIGN KEY (film_id) REFERENCES Films(film_id) ON DELETE CASCADE,
                      FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE,
                      FOREIGN KEY (lieu_id) REFERENCES Lieux(lieu_id) ON DELETE CASCADE
);

CREATE TABLE Utilisateurs (
                              utilisateur_id SERIAL PRIMARY KEY,
                              nom VARCHAR(255),
                              prenom VARCHAR(255),
                              email VARCHAR(255) UNIQUE,
                              mot_de_passe VARCHAR(255),
                              date_inscription DATE,
                              type_utilisateur VARCHAR(20) DEFAULT 'utilisateur' CHECK (type_utilisateur IN ('utilisateur', 'admin'))
);


