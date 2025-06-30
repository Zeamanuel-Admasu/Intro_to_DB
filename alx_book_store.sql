import mysql.connector
from mysql.connector import errorcode

def create_database():
    try:
        # Connect without specifying database (to create it)
        db = mysql.connector.connect(
            host="localhost",
            user="root",
            password="A12345678!"
        )
        cursor = db.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
        cursor.close()
        db.close()
    except mysql.connector.Error as err:
        print(f"Error: {err}")

if __name__ == "__main__":
    create_database()
