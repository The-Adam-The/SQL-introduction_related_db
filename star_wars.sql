DROP TABLE IF EXISTS lightsabers;
DROP TABLE IF EXISTS characters;


--Create
CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT 
);

CREATE TABLE lightsabers (
    id SERIAL PRIMARY KEY,
    hilt_metal VARCHAR(255) NOT NULL,
    colour VARCHAR(255),
    character_id INT REFERENCES characters(id)
);

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Yoda', false, 427);

--Read
-- SELECT name FROM characters;
-- SELECT darkside FROM characters;
-- SELECT age FROM characters;
-- SELECT count FROM characters;

--Update
-- UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';

--Delete
-- DELETE FROM characters WHERE name = 'Yoda';

-- INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 25);
-- SELECT * FROM characters;

-- DELETE FROM characters WHERE name = 'Luke Skywalker';
-- SELECT * FROM characters;


INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

-- SELECT * FROM characters;

INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green', 'palladium', 3);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 1);

--Won't work as there is a NOT NULL constraint
-- INSERT INTO lightsabers (colour) VALUES ('blue');

SELECT * FROM characters WHERE id = 4;
-- SELECT * FROM characters;