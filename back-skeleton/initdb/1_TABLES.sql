create table restaurant
(
    id SERIAL PRIMARY KEY,
    nom TEXT not null,
    adresse TEXT not null,
    ville TEXT null,
    pays TEXT null,
    image bytea null
);

create table lieux
(
    id SERIAL PRIMARY KEY,
    nom TEXT not null,
    adresse TEXT not null,
    ville TEXT null,
    pays TEXT null,
    notes TEXT null,
    description TEXT null,
    image bytea null
);

create table films
(
    id SERIAL PRIMARY KEY,
    titre TEXT not null,
    realisateur TEXT not null,
    genre TEXT null,
    annee TEXT null,
    duree TEXT null,
    notes TEXT null,
    description TEXT null,
    image bytea null
);
