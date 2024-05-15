class DefiApiAdapter:
    def __init__(self):
        self.api_url = "https://defi-api.com"
        self.headers = {"Authorization": "Bearer your_api_key"}

    async def get_data(self):
        response = requests.get(self.api_url, headers=self.headers)
        if response.status_code == 200:
            return response.json()
        else:
            return None