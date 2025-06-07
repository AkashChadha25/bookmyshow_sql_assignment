
-- Theatre Table
CREATE TABLE Theatre (
    theatre_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    location VARCHAR(100)
);

-- Screen Table
CREATE TABLE Screen (
    screen_id INT PRIMARY KEY AUTO_INCREMENT,
    theatre_id INT,
    name VARCHAR(50),
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id)
);

-- Movie Table
CREATE TABLE Movie (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    language VARCHAR(50),
    certification VARCHAR(10),
    format VARCHAR(20)
);

-- Show_Details Table
CREATE TABLE Show_Details (
    Show_Details_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    screen_id INT,
    Show_Details_date DATE,
    Show_Details_time TIME,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (screen_id) REFERENCES Screen(screen_id)
);

-- Sample Data
INSERT INTO Theatre (name, location) VALUES ('PVR: Nexus', 'Forum Mall, Bengaluru');

INSERT INTO Screen (theatre_id, name) VALUES (1, 'Screen 1'), (1, 'Screen 2');

INSERT INTO Movie (title, language, certification, format)
VALUES 
('Dasara', 'Telugu', 'UA', '2D'),
('Kisi Ka Bhai Kisi Ki Jaan', 'Hindi', 'UA', '4K ATMOS 2D'),
('Tu Jhoothi Main Makkaar', 'Hindi', 'UA', '2D'),
('Avatar: The Way of Water', 'English', 'UA', '3D');

INSERT INTO Show_Details (movie_id, screen_id, Show_Details_date, Show_Details_time)
VALUES
(1, 1, '2023-04-25', '12:10:00'),
(2, 1, '2023-04-25', '01:00:00'),
(2, 1, '2023-04-25', '04:10:00'),
(2, 1, '2023-04-25', '06:20:00'),
(2, 1, '2023-04-25', '07:20:00'),
(2, 1, '2023-04-25', '10:30:00'),
(3, 2, '2023-04-25', '01:15:00'),
(4, 2, '2023-04-25', '07:20:00');
