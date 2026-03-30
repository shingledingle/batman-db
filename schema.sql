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
INSERT INTO characters (name, alias, alignment, first_appearance, first_year, home_base, status) VALUES
('Clark Kent', 'Superman', 'hero', 'Action Comics #1', 1938, 'Metropolis', 'alive'),
('Bruce Wayne', 'Batman', 'hero', 'Detective Comics #27', 1939, 'Gotham City', 'alive'),
('Diana Prince', 'Wonder Woman', 'hero', 'All-Star Comics #8', 1941, 'Themyscira', 'alive');

SELECT alignment, COUNT(*) FROM characters GROUP BY alignment;