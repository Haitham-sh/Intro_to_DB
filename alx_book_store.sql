CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id FOREIGN KEY REFERENCES authors(id),
    price DOUBLE NOT NULL,
    publication_date DATE,
);

CREATE TABLE IF NOT EXISTS authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VVARCHAR(215) NOT NULL,
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id FOREIGN KEY REFERENCES customers(id),
    order_date DATE NOT NULL,
);

CREATE TABLE IF NOT EXISTS order_detail (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id FOREIGN KEY REFERENCES orders(id),
    book_id FOREIGN KEY REFERENCES books(id),
    quantity DOUBLE INT NOT NULL,
);

