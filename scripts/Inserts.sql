
-- Добавляем записи в таблицу Exhibits

INSERT INTO exhibits
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10);
--- inserting some data in Animal Species
INSERT INTO Animal_Species (species_id, name) VALUES (1, 'Lion');
INSERT INTO Animal_Species (species_id, name) VALUES (2, 'Giraffe');
INSERT INTO Animal_Species (species_id, name) VALUES (3, 'Elephant');
INSERT INTO Animal_Species (species_id, name) VALUES (4, 'Penguin');
INSERT INTO Animal_Species (species_id, name) VALUES (5, 'Zebra');
INSERT INTO Animal_Species (species_id, name) VALUES (6, 'Tiger');
INSERT INTO Animal_Species (species_id, name) VALUES (7, 'Panda');
INSERT INTO Animal_Species (species_id, name) VALUES (8, 'Kangaroo');
INSERT INTO Animal_Species (species_id, name) VALUES (9, 'Flamingo');
INSERT INTO Animal_Species (species_id, name) VALUES (10, 'Rhino');
--- inserting some_data in animal status
insert into Animal_Status (status_id, name) VALUES (1, 'Alive');
insert into Animal_Status (status_id, name) VALUES (2, 'Dead');
insert into Animal_Status (status_id, name) VALUES (3, 'Serious condition');
insert into Animal_Status (status_id, name) VALUES (4, 'Stable');
insert into Animal_Status (status_id, name) VALUES (5, 'Arrtived');
--inserting some data in food types
INSERT INTO Food_Types (food_id,name) VALUES (1,'Meat');
INSERT INTO Food_Types (food_id,name) VALUES (2,'Vegetables');
INSERT INTO Food_Types (food_id,name) VALUES (3,'Fruits');
INSERT INTO Food_Types (food_id,name) VALUES (4,'Grains');
INSERT INTO Food_Types (food_id,name) VALUES (5,'Fish');
INSERT INTO Food_Types (food_id,name) VALUES (6,'Insects');
INSERT INTO Food_Types (food_id,name) VALUES (7,'Nuts');
INSERT INTO Food_Types (food_id,name) VALUES (8,'Seeds');
INSERT INTO Food_Types (food_id,name) VALUES (9,'Eggs');
INSERT INTO Food_Types (food_id,name) VALUES (10,'Milk');
INSERT INTO Positions (position_id,name) VALUES (1,'Zookeeper');
INSERT INTO Positions (position_id,name) VALUES (2,'Veterinarian');
INSERT INTO Positions (position_id,name) VALUES (3,'Curator');
INSERT INTO Positions (position_id,name) VALUES (4,'Horticulturist');
INSERT INTO Positions (position_id,name) VALUES (5,'Educator');
INSERT INTO Positions (position_id,name) VALUES (6,'Researcher');
INSERT INTO Positions (position_id,name) VALUES (7,'Guest Services Representative');
INSERT INTO Positions (position_id,name) VALUES (8,'Gift Shop Associate');
INSERT INTO Positions (position_id,name) VALUES (9,'Food Services Associate');
INSERT INTO Positions (position_id,name) VALUES (10,'Facilities Maintenance Technician');
-- inserting data in Employee
INSERT INTO Employees (employee_id,name , position_id, hire_date, salary)
VALUES (1,'John Smith', 1, '2022-01-01', 50000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (2,'Jane Doe', 2, '2021-05-15', 60000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (3,'Bob Johnson', 3, '2020-03-10', 45000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (4,'Emily Davis', 4, '2019-09-01', 55000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (5,'Alex Rodriguez', 5, '2018-06-01', 70000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (6,'Sarah Brown', 6, '2017-12-15', 65000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (7,'David Lee', 1, '2016-11-01', 48000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (8,'Samantha Taylor', 2, '2015-04-10', 58000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (9,'Michael Jackson', 3, '2014-08-01', 42000.00);
INSERT INTO Employees (employee_id,name, position_id, hire_date, salary)
VALUES (10,'Ashley Wilson', 4, '2013-03-01', 52000.00);
INSERT INTO Medications (medication_id,name)
VALUES (1,'Antibiotic');
INSERT INTO Medications (medication_id,name)
VALUES (2,'Painkiller');
INSERT INTO Medications (medication_id,name)
VALUES (3,'Vitamin supplement');
INSERT INTO Medications (medication_id,name)
VALUES (4,'Surgical anesthesia');
INSERT INTO Medications (medication_id,name)
VALUES (5,'Diagnostic imaging contrast agent');
INSERT INTO Medications (medication_id,name)
VALUES (6,'Dental anesthesia');
INSERT INTO Medications (medication_id,name)
VALUES (7,'Anti-inflammatory');
INSERT INTO Medications (medication_id,name)
VALUES (8,'Antihistamine');
INSERT INTO Medications (medication_id,name)
VALUES (9,'Antifungal');
INSERT INTO Medications (medication_id,name)
VALUES (10,'Antiparasitic');
INSERT INTO Animal_Sex(sex_id, name) VALUES (1,'Male') , (2,'Female');
--- Inserting some data in Animals
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (1,'Барсик', 1, 1, '2018-05-20', 1, 3, NOW(), NOW(), 2, 2);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (2,'Max', 1, 1, '2017-04-12', 1, 2, NOW(), NOW(), 2, 2);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (3,'Buddy', 3, 1, '2020-01-05', 1, 5, NOW(), NOW(), 4, 4);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (4,'Maggie', 2, 2, '2016-11-18', 2, 1, NOW(), NOW(), 5, 5);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (5,'Rocky', 4, 1, '2022-02-14', 1, 6, NOW(), NOW(), 1, 1);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (6,'Gizmo', 3, 2, '2019-03-01', 1, 7, NOW(), NOW(), 3, 3);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (7,'Charlie', 1, 1, '2018-09-22', 1, 2, NOW(), NOW(), 4, 4);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (8,'Luna', 2, 1, '2019-07-10', 2, 4, NOW(), NOW(), 3, 3);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (9,'George', 3, 2, '2017-12-01', 1, 1, NOW(), NOW(), 4, 4);
    INSERT INTO Animals (animal_id,name, species_id, status_id, birth_date, sex_id, exhibit_id, created_at, updated_at, created_by, updated_by)
    VALUES (10,'Mever', 4, 3, '2020-02-14', 1, 2, NOW(), NOW(), 1, 1);
---inserting some data in animal feeding
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (1, 3, '09:00:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (2, 4, '11:00:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (3, 1, '14:00:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (4, 2, '10:30:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (5, 4, '12:30:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (6, 2, '13:00:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (7, 1, '16:00:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (8, 3, '10:00:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (9, 2, '15:00:00');
INSERT INTO Animal_Feeding (animal_id, food_id, feeding_time)
VALUES (10, 1, '11:30:00');
--- inserting Medical
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (1, 3, '2023-04-29', 'Routine checkup and vaccination');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (2, 1, '2023-04-30', 'Treatment for a minor injury');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (3, 4, '2023-05-01', 'Surgery for a health issue');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (4, 2, '2023-05-03', 'Dental procedure');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (4, 6, '2023-05-05', 'Diagnostic tests for an illness');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (3, 5, '2023-05-08', 'Annual health checkup');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (5, 3, '2023-05-11', 'Medication for an infection');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (6, 1, '2023-05-13', 'Treatment for a wound');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (7, 2, '2023-05-15', 'Surgical procedure');
INSERT INTO Medical_Procedures (animal_id, medication_id, procedure_date, description)
VALUES (9, 4, '2023-05-17', 'Medical treatment for an illness');