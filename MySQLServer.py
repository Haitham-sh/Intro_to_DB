import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
)

mycursor = mydb.cursor()

try:
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully.")
except mysql.connector.Error as err:
    print(f"Error: {err}")
finally:
    mycursor.close()
    mydb.close()

