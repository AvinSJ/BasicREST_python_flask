import mysql.connector as mysql
db = mysql.connect(
    host = "localhost" ,
    user = "root",
    passwd = "avinsheri@1996")

print(db)

if(db):
    print("Connection Succesfull")
else:
    print("Connection Unsuccsfull")