CREATE TABLE Animal_Species (
    species_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Animal_Status (
    status_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE Positions (
    position_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE Exhibits (
    exhibit_id SERIAL PRIMARY KEY
);
CREATE TABLE Food_Types (
    food_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE Medications (
    medication_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    position_id INTEGER REFERENCES Positions (position_id),
    hire_date DATE,
    salary NUMERIC(10, 2)
);
CREATE TABLE Animal_Sex (
  sex_id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (sex_id)
);

CREATE TABLE Animals (
    animal_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    species_id INTEGER REFERENCES Animal_Species (species_id),
    status_id INTEGER REFERENCES Animal_Status (status_id),
    birth_date DATE,
    death_date DATE,
    sex_id INTEGER REFERENCES Animal_Sex (sex_id),
    exhibit_id INTEGER REFERENCES Exhibits (exhibit_id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    created_by INTEGER REFERENCES Employees (employee_id),
    updated_by INTEGER REFERENCES Employees (employee_id)
);

CREATE TABLE Animal_Feeding (
    feeding_id SERIAL PRIMARY KEY,
    animal_id INTEGER REFERENCES Animals (animal_id),
    food_id INTEGER REFERENCES Food_Types (food_id),
    feeding_time TIME
);

CREATE TABLE Medical_Procedures (
    procedure_id SERIAL PRIMARY KEY,
    animal_id INTEGER REFERENCES Animals (animal_id),
    medication_id INTEGER REFERENCES Medications (medication_id),
    procedure_date DATE,
    description TEXT
);
