USE passwords;

INSERT INTO website_passwords (website_name, website_url, first_name, last_name, username, email, password, comment)
VALUES ('MySQL', 'http://mysql.com', 'Jean', 'Smith', 'jeansmith96', 'jeanS@gmail.com', AES_ENCRYPT('$smithereens00%', @encryption_key), 'Registered at MySQL');

UPDATE website_passwords
SET website_url = 'https://facebook.com'
WHERE website_url = 'http://facebook.com';

UPDATE website_passwords
SET password = AES_ENCRYPT('21798248', @encryption_key)
WHERE website_url = 'http://hartford.edu';

SELECT website_name, website_url, first_name, last_name, username, email, AES_DECRYPT(password, @encryption_key) AS password, created_at
FROM website_passwords
WHERE website_url = 'http://mysql.com';

SELECT website_name, website_url, first_name, last_name, username, email, created_at
FROM website_passwords
WHERE website_url = 'http://hartford.edu';

DELETE FROM website_passwords
WHERE website_url = 'http://yahoo.com';

DELETE FROM website_passwords
WHERE AES_DECRYPT('$DoDoesItBest21%', @encryption_key);

SELECT *
FROM website_passwords
WHERE website_url LIKE 'https%';

UPDATE website_passwords
SET website_url = 'https://amazon.com'
WHERE password = AES_ENCRYPT('petsrock2421', @encryption_key);