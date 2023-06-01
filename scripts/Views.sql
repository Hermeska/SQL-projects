
---creating views
CREATE VIEW living_animals AS
SELECT *
FROM Animals
WHERE death_date IS NULL;

---Представление 1: Список животных и их статусы
CREATE VIEW animal_status_list AS
SELECT a.name AS animal_name, s.name AS status_name
FROM Animals a
JOIN Animal_Status s ON a.status_id = s.status_id;
--Представление 2: Список сотрудников и их должностей
CREATE VIEW employee_position_list AS
SELECT e.name AS employee_name, p.name AS position_name
FROM Employees e
JOIN Positions p ON e.position_id = p.position_id;
---Представление 4: Список животных и их кормежек
CREATE VIEW animal_feeding_list AS
SELECT a.name AS animal_name, f.name AS food_name, af.feeding_time
FROM Animals a
JOIN Animal_Feeding af ON a.animal_id = af.animal_id
JOIN Food_Types f ON af.food_id = f.food_id;
---Представление 5: Список животных, прошедших медицинские процедуры,
-- с описанием процедур
CREATE VIEW animal_medical_list AS
SELECT a.name AS animal_name, m.name AS medication_name, mp.procedure_date, mp.description
FROM Animals a
JOIN Medical_Procedures mp ON a.animal_id = mp.animal_id
JOIN Medications m ON mp.medication_id = m.medication_id;
---Представление 6: Список животных и их видов
CREATE VIEW animal_species_list AS
SELECT a.name AS animal_name, s.name AS species_name
FROM Animals a
JOIN Animal_Species s ON a.species_id = s.species_id;
