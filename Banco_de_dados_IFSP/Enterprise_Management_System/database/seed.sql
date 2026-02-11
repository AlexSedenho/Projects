USE UrbanSuit_Manager;
GO

INSERT INTO countries (country_id, country_name) VALUES 
('BR', 'Brasil'), 
('DE', 'Alemanha'), 
('US', 'Estados Unidos');

INSERT INTO states (state_id, state_name, country_id) VALUES 
('SP', 'São Paulo', 'BR'), 
('BE', 'Berlin', 'DE'), 
('CA', 'California', 'US');

INSERT INTO cities (city_name, state_id, country_id) VALUES 
('Barretos', 'SP', 'BR'), 
('Berlin', 'BE', 'DE'), 
('Los Angeles', 'CA', 'US');

INSERT INTO equipment (equipment_name, purchase_date, purchase_value, equipment_status, security_requirements) VALUES 
('MacBook Pro M3', '2025-10-15', 18000.00, 'Ativo', 'Biometria e Criptografia'),
('Monitor Dell 32 4K', '2025-11-20', 4500.00, 'Ativo', 'N/A'),
('Cadeira Herman Miller', '2026-01-05', 12000.00, 'Manutenção', 'Ergonomia NR17');

INSERT INTO department (department_name, department_budget) VALUES 
('Software Engineering', 150000.00), 
('Cloud & Infrastructure', 80000.00), 
('Human Resources', 40000.00);

INSERT INTO projects (project_description, date_start, date_end, overall_costs, department_id) VALUES 
('UrbanSuit Manager System', '2026-01-15', '2026-12-31', 50000.00, 1),
('Global Expansion Berlin', '2026-02-01', '2027-02-01', 200000.00, 2),
('Talent Acquisition DE', '2026-03-10', '2026-09-10', 30000.00, 3);

INSERT INTO employees (employee_name, phone_number, national_id, email, hire_date, street, district, street_number, complement, postal_code, city_id, department_id) VALUES 
('Alexandre Sedenho', '+5517999999999', '444.555.666-77', 'ale.sedenho@dev.com', '2026-01-10', 'Rua das Flores', 'Centro', '100', 'Casa', '14700-000', 1, 1),
('Lukas Schmidt', '+49301234567', 'DE987654321', 'l.schmidt@corp.de', '2025-12-01', 'Friedrichstraße', 'Mitte', '50', 'Apt 402', '10117', 2, 1),
('Sarah Johnson', '+12135550199', 'SSN-000-11-2222', 's.johnson@tech.us', '2026-02-05', 'Sunset Blvd', 'Hollywood', '900', NULL, '90028', 3, 2);

INSERT INTO employee_project (employee_id, project_id, equipment_id, assignment_start, assignment_end, cost) VALUES 
(1, 1, 1, '2026-01-15', '2026-12-31', 5000.00),
(2, 1, NULL, '2026-02-01', '2026-12-31', 4000.00),
(3, 2, 2, '2026-02-10', '2027-02-01', 8500.00);