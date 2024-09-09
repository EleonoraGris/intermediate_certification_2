-- CREATE DATABASE grischenko;

\c grischenko  

-- Создание таблицы test_table
CREATE TABLE test_table (
    name VARCHAR(10) CHECK (char_length(name) BETWEEN 4 AND 10),
    surname VARCHAR(50),
    city VARCHAR(50),
    age INT CHECK (age > 0 AND age < 150)
);

-- Вставка данных в таблицу test_table
INSERT INTO test_table (name, surname, city, age) VALUES
('Maria', 'Doe', 'New York', 28),
('James', 'Smith', 'London', 45),
('Anna', 'Taylor', 'Berlin', 34),
('Paula', 'Brown', 'Paris', 52),
('Markus', 'Johnson', 'Moscow', 40),
('Lucia', 'Davis', 'Rome', 27),
('Peter', 'Miller', 'Madrid', 60),
('Emma', 'Garcia', 'Barcelona', 32),
('Liam', 'Martinez', 'Lisbon', 50),
('Marta', 'Hernandez', 'Warsaw', 22),
('Evelyn', 'Lopez', 'Vienna', 48),
('Noemi', 'Wilson', 'Prague', 30),
('Rayan', 'Gonzalez', 'Budapest', 26),
('Alexis', 'Clark', 'Brussels', 55),
('Sophia', 'Rodriguez', 'Amsterdam', 43),
('Sophie', 'Lewis', 'Oslo', 29),
('Ellie', 'Walker', 'Stockholm', 39),
('Jackie', 'Young', 'Helsinki', 41),
('Leon', 'King', 'Copenhagen', 37),
('Nina', 'Wright', 'Dublin', 25);


