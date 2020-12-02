import requests
from Db_api import insert

BASE = "http://127.0.0.1:5000/"


response= requests.put(BASE + "12" ,{"id":12,"title":"Joker", "director":"Todd Phillips","year": 2019, "genre":"crime" })
print(response.json())

response = requests.get(BASE + "1")
print(response.json())

# insert(12,"JOKER", "Todd Philips",2019,"crime")
