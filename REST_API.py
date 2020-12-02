from flask import Flask, jsonify
from Db_api import *

app=Flask(__name__)


@app.route('/')
def index():
    return "Welcome To The Database"


@app.route("/table", methods=['GET'])
def get ():
    return jsonify({'Tables':show_table()})

@app.route("/table", methods=["POST"])
def create():
    id=int(input("Add a new ID :"))
    title=str(input("TITLE :"))
    director=str(input("DIRECTOR :"))
    year=int(input("YEAR :"))
    genre=str(input("GENRE :"))
    data=insert(id,title,director,year,genre)
    return data

create()




if __name__ == "__main__":
    app.run(debug=True)