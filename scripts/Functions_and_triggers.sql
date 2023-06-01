
---Функция "get_animal_status" - получить статус животного по его ID.
CREATE FUNCTION get_animal_status(animal_id INTEGER) RETURNS VARCHAR AS $$
    DECLARE
        status_name VARCHAR;
    BEGIN
        SELECT name INTO status_name FROM animal_status WHERE status_id = (select *from (SELECT status_id FROM animals
                                                                                                 WHERE Animals.animal_id = $1) asi);
        RETURN status_name;
    END;
$$ LANGUAGE plpgsql;

---Хранимая процедура "add_employee" - добавить нового сотрудника.
CREATE PROCEDURE add_employee(
    name VARCHAR,
    position_id INTEGER,
    hire_date DATE,
    salary NUMERIC
)
AS $$
    BEGIN
        INSERT INTO employees (name, position_id, hire_date, salary)
        VALUES (name, position_id, hire_date, salary);
    END;
$$ LANGUAGE plpgsql;

---Процедура  для автоматического обновления даты изменения записи:
CREATE OR REPLACE FUNCTION update_animal_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
--Триггер для него
CREATE TRIGGER animal_updated_at
BEFORE UPDATE ON Animals
FOR EACH ROW
EXECUTE FUNCTION update_animal_updated_at();

---Процедура для проверки максимального значения заработной платы сотрудника при добавлении новой записи:
CREATE OR REPLACE FUNCTION check_employee_salary()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.salary > 10000 THEN
    RAISE EXCEPTION 'Employee salary cannot exceed 10000';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
---Триггер для этой процедуры
CREATE TRIGGER employee_salary_check
BEFORE INSERT ON Employees
FOR EACH ROW
EXECUTE FUNCTION check_employee_salary();
---Данная функция возвращает количество животных определенного вида.
CREATE OR REPLACE FUNCTION get_animal_count_by_species(species_name VARCHAR(50))
RETURNS INTEGER AS $$
DECLARE
    animal_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO animal_count
    FROM Animals a
    JOIN Animal_Species s ON a.species_id = s.species_id
    WHERE s.name = species_name;

    RETURN animal_count;
END;
$$ LANGUAGE plpgsql;