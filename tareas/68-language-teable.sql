

-- Tarea con countryLanguage

-- Crear la tabla de language

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS language_code_seq;


-- Table Definition
CREATE TABLE "public"."language" (
    "code" int4 NOT NULL DEFAULT 	nextval('language_code_seq'::regclass),
    "name" text NOT NULL,
    PRIMARY KEY ("code")
);

-- Crear una columna en countrylanguage
ALTER TABLE countrylanguage
ADD COLUMN languagecode varchar(3);


-- Empezar con el select para confirmar lo que vamos a actualizar

SELECT DISTINCT "language" FROM countrylanguage order by "language" ASC;

-- Actualizar todos los registros
SELECT * FROM "language";

INSERT INTO "language" (name) SELECT DISTINCT "language" FROM countrylanguage order by "language" ASC;

-- Cambiar tipo de dato en countrylanguage - languagecode por int4
ALTER TABLE countrylanguage ALTER COLUMN languagecode TYPE int4 USING languagecode::integer;

-- Crear el forening key y constraints de no nulo el language_code

SELECT a.language, (select "name" from "language" b where b.name = a."language") FROM countrylanguage a;

UPDATE countrylanguage a SET languagecode = (select "code" from "language" b where b.name = a."language");

SELECT * FROM countrylanguage;



-- Revisar lo creado