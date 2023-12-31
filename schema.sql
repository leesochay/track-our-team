
-- Create Database and Tables within the database
DROP DATABASE IF EXISTS cms_db;

CREATE DATABASE cms_db;

USE cms_db;

CREATE TABLE department (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	PRIMARY KEY (id)
	);

CREATE TABLE role (
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id),
    title VARCHAR(30) NOT NULL,
	salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
	CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
	);

CREATE TABLE employee (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL, 
  role_id INTEGER,
  manager_id INTEGER,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE CASCADE
);