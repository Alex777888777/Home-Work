import psycopg2
import os

try:
    conn = psycopg2.connect(
        host="database",           # Имя сервиса из docker-compose
        database="myapp",
        user="postgres",
        password="secret"
    )
    print("✅ Connected to PostgreSQL!")
    conn.close()
except Exception as e:
    print(f"❌ Error: {e}")
