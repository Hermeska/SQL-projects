import psycopg2
from faker import Faker
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import random
import datetime

# установка соединения с базой данных
conn = psycopg2.connect(
    host="localhost",
    database="pg_db",
    user="postgres",
    password="postgres",
    port = "5432"
)
cur = conn.cursor()
cur.execute("SELECT Animal_Species.name, COUNT(*) as count FROM Animals JOIN Animal_Species ON Animals.species_id = Animal_Species.species_id GROUP BY Animal_Species.name HAVING COUNT(*) > 0;")
data = cur.fetchall()
species = []
amount = []
for i in range(0, len(data)):
    species.append(data[i][0])
    amount.append(data[i][1])


# Строим гистограмму
fig = plt.figure(figsize=(6, 4))
ax = fig.add_subplot()
ax.pie(amount,labels=species)
plt.show()
