CREATE DATABASE passwords DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

USE passwords;

CREATE TABLE website_passwords(
    website_name VARCHAR(128) NOT NULL,
    website_url  VARCHAR(256) NOT NULL,
    first_name   VARCHAR(64)  NOT NULL,
    last_name    VARCHAR(64)  NOT NULL,
    username     VARCHAR(64)  NOT NULL,
    email        VARCHAR(128) NOT NULL,
    password     BLOB         NOT NULL,
    comment      TEXT,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (website_url, username)
);

SET @encryption_key = '$%AlphaBrav0S777';

INSERT INTO website_passwords (website_name, website_url, first_name, last_name, username, email, password, comment)
VALUES
('MySQL', 'http://mysql.com', 'John', 'Doe', 'jdoe21', 'jdoe21@gmail.com', AES_ENCRYPT('$DoeDoesItBest21%', @encryption_key), 'MySQL account'),
('Hartford', 'http://hartford.edu', 'Jane', 'Plane', 'janeP88', 'janep@hartford.edu', AES_ENCRYPT('12664323', @encryption_key), 'UHart account'),
('GitHub', 'https://github.com', 'Nigel', 'Smith', 'Nsmith17', 'nsmith17@gmail.com', AES_ENCRYPT('$LazerBeem74%', @encryption_key), 'GitHub account'),
('Facebook', 'https://facebook.com', 'Gregory', 'Hane', 'Ghane44', 'GregHane44@gmail.com', AES_ENCRYPT('petsrock2421', @encryption_key), 'Facebook account'),
('X', 'http://X.com', 'Roxas', 'Kane', 'RoxK47', 'RoxK47@gmail.com', AES_ENCRYPT('Oblivion$05', @encryption_key), 'X account'),
('Google', 'http://google.com', 'Emma', 'Harkin', 'Ehark91', 'EmHark91@gmail.com', AES_ENCRYPT('$Twizzlers45$', @encryption_key), 'Google account'),
('LinkedIn', 'https://linkedin.com', 'Ethan', 'Hunt', 'Ehunt', 'Ehunt1@yahoo.com', AES_ENCRYPT('%MaverickNbS', @encryption_key), 'LinkedIn account'),
('Instagram', 'https://instagram.com', 'Ella', 'Scott', 'EScott33', 'EllScott33@gmail.com', AES_ENCRYPT('YellowBuzzbuzz6', @encryption_key), 'Instagram account'),
('Yahoo', 'http://yahoo.com', 'Tristan', 'Tucker', 'TrTuck', 'TrTuck@yahoo.com', AES_ENCRYPT('%TruckersUnited76', @encryption_key), 'Yahoo account'),
('Spotify', 'http://spotify.com', 'Abigail', 'Miller', 'abbymill22', 'abbymiller22@gmail.com', AES_ENCRYPT('Swifty4567', @encryption_key), 'Spotify account');