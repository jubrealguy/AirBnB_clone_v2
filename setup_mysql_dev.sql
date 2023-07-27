-- Check if the database hbnb_dev_db already exists
SELECT SCHEMA_NAME
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME = 'hbnb_dev_db';

-- If hbnb_dev_db does not exist, create the database
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Check if the user hbnb_dev already exists
SELECT user
FROM mysql.user
WHERE user = 'hbnb_dev' AND host = 'localhost';

-- If hbnb_dev does not exist, create the user and set the password
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant all privileges on the database hbnb_dev_db to the user hbnb_dev
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Grant SELECT privilege on the database performance_schema to the user hbnb_dev
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';

