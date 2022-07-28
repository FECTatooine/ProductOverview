CREATE DATABASE rawdata IF NOT EXISTS;

CREATE TABLE product (
  id serial PRIMARY KEY,
  name VARCHAR(100),
  slogan VARCHAR(1000),
  description VARCHAR(1000),
  category VARCHAR(20),
  default_price INTEGER DEFAULT 0,
)

CREATE TABLE style (
  id serial PRIMARY KEY,
  product_id INT,
  name VARCHAR(20),
  sale_price INTEGER,
  original_price INTEGER,
  default_style BOOLEAN,
)

CREATE TABLE features (
  id serial PRIMARY KEY,
  product_id INTEGER,
  feature VARCHAR(20),
  value VARCHAR(20),
)

CREATE TABLE skus (
  id serial PRIMARY KEY,
  style_id INTEGER,
  size VARCHAR(20),
  quantity INTEGER,
)

CREATE TABLE photos (
  id serial PRIMARY KEY,
  style_id INTEGER,
  url VARCHAR(20),
  thumbnail_url INTEGER,

)

