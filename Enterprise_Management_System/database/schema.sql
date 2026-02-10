CREATE DATABASE UrbanSuit_Manager;
GO
USE UrbanSuit_Manager;
GO

-- AMBIENTE DE DESENVOLVIMENTO / DEVELOPMENT ENVIRONMENT
-- Limpa as tabelas existentes para evitar conflitos durante os testes de schema.
-- Drops existing tables to avoid conflicts during schema testing.
DROP TABLE employee_project;
DROP TABLE employees;
DROP TABLE projects;
DROP TABLE department;
DROP TABLE equipment;
DROP TABLE cities;
DROP TABLE states;
DROP TABLE countries;

CREATE TABLE countries (
    country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL
);

CREATE TABLE states (
    state_id VARCHAR(3) NOT NULL,
    state_name VARCHAR(50) NOT NULL,
    country_id CHAR(2),
    PRIMARY KEY (state_id, country_id),
    CONSTRAINT fk_states_countries FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

CREATE TABLE cities (
    city_id INT IDENTITY(1,1) PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL,
    state_id VARCHAR(3) NOT NULL,
    country_id CHAR(2) NOT NULL,
    CONSTRAINT fk_cities_states FOREIGN KEY (state_id, country_id) REFERENCES states(state_id, country_id)
);

CREATE TABLE equipment (
    equipment_id INT IDENTITY(1,1) PRIMARY KEY,
    equipment_name VARCHAR(50) NOT NULL,
    purchase_date DATE NOT NULL,
    purchase_value DECIMAL(10,2) NOT NULL CHECK (purchase_value >= 0),
    equipment_status VARCHAR(250) NOT NULL,
    security_requirements VARCHAR(250) NOT NULL
);

CREATE TABLE department (
    department_id INT IDENTITY(1,1) PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    department_budget DECIMAL(10,2) NOT NULL CHECK (department_budget >= 0)
);

CREATE TABLE projects (
    project_id INT IDENTITY(1,1) PRIMARY KEY,
    project_description VARCHAR(200) NOT NULL,
    date_start DATE NOT NULL,
    date_end DATE NOT NULL,
    overall_costs DECIMAL(10,2) NOT NULL CHECK (overall_costs >= 0),
    department_id INT NOT NULL,
    CONSTRAINT fk_projects_department FOREIGN KEY (department_id) REFERENCES department(department_id),
    CONSTRAINT chk_project_dates CHECK (date_end >= date_start)
);

CREATE TABLE employees (
    employee_id INT IDENTITY(1,1) PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL UNIQUE,
    national_id VARCHAR(30) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    hire_date DATE NOT NULL,
    street VARCHAR(100) NOT NULL,
    district VARCHAR(50) NOT NULL,
    street_number VARCHAR(10) NOT NULL,
    complement VARCHAR(50),
    postal_code VARCHAR(20) NOT NULL,
    city_id INT NOT NULL,
    department_id INT NOT NULL,
    CONSTRAINT fk_employees_cities FOREIGN KEY (city_id) REFERENCES cities(city_id),
    CONSTRAINT fk_employees_department FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE employee_project (
    employee_id INT,
    project_id INT,
    equipment_id INT,
    assignment_start DATE NOT NULL,
    assignment_end DATE NOT NULL,
    cost DECIMAL(10,2) NOT NULL CHECK (cost >= 0),
    PRIMARY KEY (employee_id, project_id),
    CONSTRAINT fk_eproject_employees FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    CONSTRAINT fk_eproject_projects FOREIGN KEY (project_id) REFERENCES projects(project_id),
    CONSTRAINT fk_eproject_equipment FOREIGN KEY (equipment_id) REFERENCES equipment(equipment_id),
    CONSTRAINT chk_assign_dates CHECK (assignment_end >= assignment_start)
);