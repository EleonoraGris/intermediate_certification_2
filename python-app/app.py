import psycopg2
import os

# Подключение к базе данных
conn = psycopg2.connect(
    host=os.getenv('POSTGRES_HOST'),
    database=os.getenv('POSTGRES_DB'),
    user=os.getenv('POSTGRES_USER'),
    password=os.getenv('POSTGRES_PASSWORD')
)

cur = conn.cursor()

# Выполнение запроса
cur.execute("""
    SELECT MIN(age), MAX(age)
    FROM test_table
    WHERE LENGTH(name) < 6
""")

result = cur.fetchone()

# Вывод результата
print(f"Минимальный возраст: {result[0]}, Максимальный возраст: {result[1]}")

# Закрываем соединение
cur.close()
conn.close()

