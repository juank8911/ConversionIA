from .api_adapter import DexApiAdapter

class Api:
    def __init__(self):
        self.api_adapter = DexApiAdapter()

    async def connect(self):
        return await self.api_adapter.connect()

    async def get_data(self):
        return await self.api_adapter.get_data()