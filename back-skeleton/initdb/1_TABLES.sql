create table restaurant
(
    id SERIAL PRIMARY KEY,
    nom TEXT not null,
    adresse TEXT not null,
    ville TEXT null,
    pays TEXT null,
    image bytea null
);
