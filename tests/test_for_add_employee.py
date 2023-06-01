import psycopg2
import unittest

class TestAddEmployee(unittest.TestCase):

    def setUp(self):
        self.conn = psycopg2.connect(database="testdb", user="testuser", password="testpass", host="localhost", port="5432")
        self.cur = self.conn.cursor()
        self.cur.execute('''CREATE TABLE IF NOT EXISTS employees
                        (id SERIAL PRIMARY KEY,
                         name VARCHAR,
                         position_id INTEGER,
                         hire_date DATE,
                         salary NUMERIC)''')

    def test_add_employee(self):
        name = "John Smith"
        position_id = 1
        hire_date = "2023-04-15"
        salary = 5000

        self.cur.execute("CALL add_employee(%s, %s, %s, %s)", (name, position_id, hire_date, salary))
        self.cur.execute("SELECT * FROM employees WHERE name = %s", (name,))
        employee = self.cur.fetchone()

        self.assertEqual(name, employee[1])
        self.assertEqual(position_id, employee[2])
        self.assertEqual(hire_date, str(employee[3]))
        self.assertEqual(salary, employee[4])

    def tearDown(self):
        self.cur.execute("DROP TABLE IF EXISTS employees")
        self.conn.commit()
        self.cur.close()
        self.conn.close()

if __name__ == '__main__':
    unittest.main()
