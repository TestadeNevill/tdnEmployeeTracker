DROP DATABASE IF EXISTS city_employees;
CREATE database city_employees;

USE city_employees;

CREATE TABLE department(
id INT auto_increment,
name VARCHAR(30),
PRIMARY KEY (id)
);

CREATE TABLE role(
    id INT auto_increment,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY(id) references department(id),
    PRIMARY KEY(id)
    );

CREATE TABLE employee(
    id INT auto_increment,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(role_id) references role(id),
    FOREIGN KEY(manager_id) references employee(id)
);