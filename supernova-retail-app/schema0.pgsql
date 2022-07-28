

CREATE TABLE IF NOT EXISTS product (
  id serial PRIMARY KEY,
  name VARCHAR(100),
  slogan VARCHAR(1000),
  description VARCHAR(1000),
  category VARCHAR(20),
  default_price INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS style (
  id serial PRIMARY KEY,
  product_id INT,
  name VARCHAR(100),
  sale_price VARCHAR(20),
  original_price VARCHAR(20),
  default_style BOOLEAN
);

CREATE TABLE IF NOT EXISTS features (
  id serial PRIMARY KEY,
  product_id INTEGER,
  feature VARCHAR(255),
  value VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS skus (
  id serial PRIMARY KEY,
  style_id INTEGER,
  size VARCHAR(20),
  quantity INTEGER
);

CREATE TABLE IF NOT EXISTS photos (
  id serial PRIMARY KEY,
  style_id INTEGER,
  url TEXT,
  thumbnail_url TEXT
);

