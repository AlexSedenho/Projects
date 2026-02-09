CREATE TABLE states (
    state_id VARCHAR(2) PRIMARY KEY,
    state_name VARCHAR(50) NOT NULL
);

CREATE TABLE cities (
    city_id INTEGER PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL,
    state_id VARCHAR(2)
);

CREATE TABLE equipment (
    equipment_id INTEGER PRIMARY KEY,
    equipment_name VARCHAR(50) NOT NULL,
    purchase_date DATE NOT NULL,
    purchase_value DECIMAL(10,2) NOT NULL,
    equipment_status VARCHAR(250) NOT NULL,
    security_requirements VARCHAR(250) NOT NULL
);

CREATE TABLE department (
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    dapartment_budget DECIMAL(10,2)
);

CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    project_description VARCHAR(200) NOT NULL,
    starts_date DATE NOT NULL,
    ends_date DATE NOT NULL,
    overall_costs DECIMAL(10,2) NOT NULL,
    department_id INTEGER
);