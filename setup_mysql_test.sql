-- Check if the database hbnb_test_db already exists
SELECT SCHEMA_NAME
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME = 'hbnb_test_db';

-- If hbnb_test_db does not exist, create the database
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Check if the user hbnb_test already exists
SELECT user
FROM mysql.user
WHERE user = 'hbnb_test' AND host = 'localhost';

-- If hbnb_test does not exist, create the user and set the password
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- Grant all privileges on the database hbnb_test_db to the user hbnb_test
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- Grant SELECT privilege on the database performance_schema to the user hbnb_test
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

