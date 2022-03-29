CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE todos (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    title varchar(255) NOT NULL,
    description varchar(255) NOT NULL
);

INSERT INTO todos (title, description) VALUES ('First todo', 'First todo description');
INSERT INTO todos (title, description) VALUES ('Second todo', 'Second todo description');
INSERT INTO todos (title, description) VALUES ('Third todo', 'Third todo description');
INSERT INTO todos (title, description) VALUES ('Fourth todo', 'Fourth todo description');
INSERT INTO todos (title, description) VALUES ('Fifth todo', 'Fifth todo description');
INSERT INTO todos (title, description) VALUES ('Sixth todo', 'Sixth todo description');
INSERT INTO todos (title, description) VALUES ('Seventh todo', 'Seventh todo description');
INSERT INTO todos (title, description) VALUES ('Eighth todo', 'Eighth todo description');
INSERT INTO todos (title, description) VALUES ('Ninth todo', 'Ninth todo description');
INSERT INTO todos (title, description) VALUES ('Tenth todo', 'Tenth todo description');
INSERT INTO todos (title, description) VALUES ('Eleventh todo', 'Eleventh todo description');
INSERT INTO todos (title, description) VALUES ('Twelfth todo', 'Twelfth todo description');
INSERT INTO todos (title, description) VALUES ('Thirteenth todo', 'Thirteenth todo description');
INSERT INTO todos (title, description) VALUES ('Fourteenth todo', 'Fourteenth todo description');
INSERT INTO todos (title, description) VALUES ('Fifteenth todo', 'Fifteenth todo description');
INSERT INTO todos (title, description) VALUES ('Sixteenth todo', 'Sixteenth todo description');
INSERT INTO todos (title, description) VALUES ('Seventeenth todo', 'Seventeenth todo description');
INSERT INTO todos (title, description) VALUES ('Eighteenth todo', 'Eighteenth todo description');
INSERT INTO todos (title, description) VALUES ('Nineteenth todo', 'Nineteenth todo description');
INSERT INTO todos (title, description) VALUES ('Twentieth todo', 'Twentieth todo description');