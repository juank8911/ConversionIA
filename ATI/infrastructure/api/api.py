class Api:
    def __init__(self):
        self.api_adapter = ApiAdapter()

    async def get_defi_data(self):
        data = await self.api_adapter.get_defi_data()
        return data

    async def get_new_launches(self):
        new_launches = await self.api_adapter.get_new_launches()
        return new_launches