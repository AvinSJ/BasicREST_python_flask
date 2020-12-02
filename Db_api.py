import mysql.connector as mysql
import json

db = mysql.connect(
    host = "localhost",
    user = "root",
    passwd = "*********"
)

cursor=db.cursor()


def show_databases():
    #Shows the existing databases

    cursor.execute("SHOW DATABASES")
    databases = cursor.fetchall() ## fetches the data

    # to show each database
    for database in databases:
        print(database)



def insert(id, title, director, year,genre):
    # To insert a new row

    query = "INSERT INTO database_of_movies.movie_list (ID, Title, Director, Year_of_release, Genre ) VALUES (%s, %s, %s, %s, %s)"
    values = (id,title,director,year,genre)
    cursor.execute(query, values)
    db.commit() ## to add to the original database
    print(cursor.rowcount, "record inserted")

def show_table():
    # Displays the table

    query = "SELECT * FROM database_of_movies.movie_list"
    cursor.execute(query)## to get query items

    records = cursor.fetchall()## fetches the all the query data
    for record in records:
        print(record)
    return records
def delete_id(a):
    # To remove the row denoted by id.

    query = "DELETE FROM database_of_movies.movie_list WHERE id ={id}".format(id=a)
    cursor.execute(query)
    db.commit()



## To insert new data call the insert function
# insert(int(11),"Inception","Christopher Nolan",int(2010),"Action")
# delete_id(11)
# show_databases()
show_table()
