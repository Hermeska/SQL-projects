
---Получить количество животных каждого вида, у которых более 5 лет:
SELECT Animal_Species.name, COUNT(*) as count
FROM Animals
JOIN Animal_Species ON Animals.species_id = Animal_Species.species_id
WHERE (NOW() - Animals.birth_date) > '5 years'
GROUP BY Animal_Species.name
HAVING COUNT(*) > 0
ORDER BY count DESC;
---Получить средний возраст животных в каждом вольере:
SELECT Exhibits.exhibit_id, AVG(EXTRACT(year FROM age(NOW(), Animals.birth_date))) as avg_age
FROM Animals
JOIN Exhibits ON Animals.exhibit_id = Exhibits.exhibit_id
GROUP BY Exhibits.exhibit_id
ORDER BY avg_age DESC;
---Получить список должностей с средней зарплатой и максимальной зарплатой:
SELECT Positions.name, AVG(Employees.salary) as avg_salary, MAX(Employees.salary) as max_salary
FROM Employees
JOIN Positions ON Employees.position_id = Positions.position_id
GROUP BY Positions.name
ORDER BY max_salary DESC;
---Получить список животных, их возраст и время последнего кормления:
SELECT Animals.name, EXTRACT(year FROM age(NOW(), Animals.birth_date)) as age, MAX(Animal_Feeding.feeding_time) as last_feeding_time
FROM Animals
LEFT JOIN Animal_Feeding ON Animals.animal_id = Animal_Feeding.animal_id
GROUP BY Animals.name, Animals.birth_date
ORDER BY last_feeding_time DESC;
---Получить список животных с номером вольера и количеством пройденных медицинских процедур:
SELECT Animals.name, Exhibits.exhibit_id, COUNT(Medical_Procedures.procedure_id) as procedures_count
FROM Animals
JOIN Exhibits ON Animals.exhibit_id = Exhibits.exhibit_id
LEFT JOIN Medical_Procedures ON Animals.animal_id = Medical_Procedures.animal_id
GROUP BY Animals.name, Exhibits.exhibit_id
ORDER BY procedures_count DESC;
---Получить список животных, отсортированных по возрасту, с указанием номера вольера и имени вида:
SELECT Animals.name, EXTRACT(year FROM age(NOW(), Animals.birth_date)) as age, Exhibits.exhibit_id, Animal_Species.name as species_name
FROM Animals
JOIN Exhibits ON Animals.exhibit_id = Exhibits.exhibit_id
JOIN Animal_Species ON Animals.species_id = Animal_Species.species_id
ORDER BY age DESC, Exhibits.exhibit_id ASC;