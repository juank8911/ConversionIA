class DexApiAdapter:
    def __init__(self):
        self.api_url = "https://apis.dappradar.com/v2/"
        self.headers = {"Authorization": "Bearer " + os.getenv("TOKEN_APIDW")}

    async def connect(self):
        response = requests.get(self.api_url, headers=self.headers)
        if response.status_code == 200:
            return True
        else:
            return False

    async def get_data(self):
        response = requests.get(self.api_url, headers=self.headers)
        if response.status_code == 200:
            return response.json()
        else:
            return None