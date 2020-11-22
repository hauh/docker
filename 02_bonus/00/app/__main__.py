"""Sample Python app."""

import requests

response = requests.get("http://worldtimeapi.org/api/timezone/Europe/Moscow")
if not response.ok:
    print("Request failed :(")
else:
    print(f"Current Moscow time is {response.json()['datetime']}")
