import requests

class ApiAdapter:
    def get_defi_data(self):
        response = requests.get('http://localhost:3000/api/defi_data')
        data = response.json()
        return data

    def get_new_launches(self):
        response = requests.get('http://localhost:3000/api/new_launches')
        new_launches = response.json()
        return new_launches