-- DC Universe Database Schema

CREATE TABLE characters (
    character_id        SERIAL PRIMARY KEY,
    name                VARCHAR(100) NOT NULL,
    alias               VARCHAR(100),
    alignment           VARCHAR(10) CHECK (alignment IN ('hero', 'villian', 'antihero', 'civillian')),
    first_appearance    VARCHAR(150),
    first_year          INT,
    home_base           VARCHAR(100),
    status              VARCHAR(10), CHECK (status IN ('alive', 'deceased', 'unknown'))
);