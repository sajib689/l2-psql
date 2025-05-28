-- Active: 1748232154750@@127.0.0.1@5432@test
CREATE TABLE "user" (
    serial_id SERIAL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL
);

SELECT * FROM "user"

INSERT INTO "user" VALUES(2,'babu', 'Hossen', 24)

ALTER TABLE "user"
ADD COLUMN "email" VARCHAR(50) NOT NULL DEFAULT 'sajib@gmail.com';

ALTER TABLE "user"
ADD CONSTRAINT user_email UNIQUE (email);

UPDATE "user"
SET email = concat('sajib', + serial_id, '@gmail.com')
WHERE email = 'sajib@gmail.com'


DELETE FROM "user"
WHERE ctid NOT IN (
    SELECT MIN (ctid)
    FROM "user"
    GROUP BY age
)

ALTER ADD TABLE
CONSTRAINT user_age UNIQUE(age)

UPDATE "user"
SET age = serial_id + 1
WHERE age = 24