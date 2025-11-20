USE firstdatabase;

/* ---------------------------
   NUMERIC DATA TYPES
   --------------------------- */

/* INT */
CREATE TABLE products (
  id INT,
  quantity INT
);
INSERT INTO products VALUES (1, 50);

/* BIGINT */
CREATE TABLE logs (
  log_id BIGINT
);
INSERT INTO logs VALUES (9876543210123);

/* SMALLINT */
CREATE TABLE ratings (
  like_count SMALLINT
);
INSERT INTO ratings VALUES (255);

/* DECIMAL */
CREATE TABLE items (
  price DECIMAL(10,2)
);
INSERT INTO items VALUES (499.99);

/* FLOAT + DOUBLE */
CREATE TABLE sensors (
  temperature FLOAT,
  accuracy DOUBLE
);
INSERT INTO sensors VALUES (36.6, 99.987654321);


/* ---------------------------
   STRING DATA TYPES
   --------------------------- */

/* CHAR */
CREATE TABLE codes (
  country_code CHAR(2)
);
INSERT INTO codes VALUES ('IN');

/* VARCHAR */
CREATE TABLE users (
  username VARCHAR(50)
);
INSERT INTO users VALUES ('syed_afrid');

/* TEXT */
CREATE TABLE posts (
  content TEXT
);
INSERT INTO posts VALUES ('This is a long post containing many sentences...');


/* ---------------------------
   DATE & TIME DATA TYPES
   --------------------------- */

/* DATE */
CREATE TABLE employees (
  join_date DATE
);
INSERT INTO employees VALUES ('2025-01-20');

/* TIME */
CREATE TABLE shifts (
  start_time TIME
);
INSERT INTO shifts VALUES ('09:45:00');

/* DATETIME */
CREATE TABLE events (
  event_at DATETIME
);
INSERT INTO events VALUES ('2025-02-01 14:30:00');

/* TIMESTAMP */
CREATE TABLE log_entries (
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO log_entries VALUES ();


/* ---------------------------
   BINARY DATA TYPES
   --------------------------- */

/* VARBINARY */
CREATE TABLE hashes (
  sha256 VARBINARY(32)
);

/* BLOB */
CREATE TABLE files (
  file_data BLOB
);
/* Note: Insert binary data using application code */


/* ---------------------------
   BOOLEAN
   --------------------------- */

CREATE TABLE accounts (
  is_active BOOLEAN
);

INSERT INTO accounts VALUES (TRUE), (FALSE);


/* ---------------------------
   JSON
   --------------------------- */

CREATE TABLE settings (
  config JSON
);

INSERT INTO settings VALUES (
  '{ "theme": "dark", "volume": 80 }'
);
