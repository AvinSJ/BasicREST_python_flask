from flask import Flask, jsonify
from flask_restful import Api, Resource, reqparse
from Db_api import *
import json

app=Flask(__name__)
api = Api(app)


index_args=reqparse.RequestParser()
index_args.add_argument("id", type=int, help="Enter the required id")
index_args.add_argument("title", type=str, help="Name of the movie")
index_args.add_argument("director", type=str, help="Director of the movie")
index_args.add_argument("year", type=int, help="Year of Release")
index_args.add_argument("genre", type=str, help="Genre of the movie")


table=show_table()


out_file = open("moviedata.json", "w")
table=json.dump(table, out_file)
out_file.close()

f = open('myfile.json', )
data = json.load(f)
f.close()

d={}

class Table(Resource):
	def get(self,id):
		return data
	def put(self, id):
		args=index_args.parse_args()
		d[id]=args
		return print(d[id])




api.add_resource(Table, "/<int:id>")

if __name__ == "__main__":
    app.run(debug=True)


