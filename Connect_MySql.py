import mysql.connector as mysql
db = mysql.connect(
    host = "localhost" ,
    user = "root",
    passwd = "*******")

print(db)

if(db):
    print("Connection Succesfull")
else:
    print("Connection Unsuccsfull")
