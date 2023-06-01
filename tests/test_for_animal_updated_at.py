import psycopg2
import unittest

class TestUpdateAnimalUpdatedAt(unittest.TestCase):

    def setUp(self):
        self.conn = psycopg2.connect(database="testdb", user="testuser", password="testpass", host="localhost", port="5432")
        self.cur = self.conn.cursor()
        self.cur.execute('''CREATE TABLE IF NOT EXISTS Animals
                        (id SERIAL PRIMARY KEY,
                         species_id INTEGER,
                         name VARCHAR,
                         updated_at TIMESTAMP DEFAULT now())''')
        self.cur.execute('''CREATE TABLE IF NOT EXISTS Animal_Species
                        (species_id SERIAL PRIMARY KEY,
                         name VARCHAR)''')
        self.cur.execute("INSERT INTO Animal_Species (name) VALUES ('Dog')")
        self.cur.execute("INSERT INTO Animals (species_id, name) VALUES (1, 'Fido')")

    def test_update_animal_updated_at(self):
        self.cur.execute("UPDATE Animals SET name = 'Buddy' WHERE id = 1")
        self.cur.execute("SELECT updated_at FROM Animals WHERE id = 1")
        updated_at = self.cur.fetchone()[0]

        self.assertIsNotNone(updated_at)

    def tearDown(self):
        self.cur.execute("DROP TABLE IF EXISTS Animals")
        self.cur.execute("DROP TABLE IF EXISTS Animal_Species")
        self.conn.commit()
        self.cur.close()
        self.conn.close()

if __name__ == '__main__':
    unittest.main()
