import psycopg2

conn = psycopg2.connect(database="dima",
                        user="postgres",
                        password="waffellka1314",
                        host="localhost",
                        port="5432")
cursor = conn.cursor() 
with open('schema.sql') as f:
    cursor.execute(f.read())
conn.commit()
conn.close()