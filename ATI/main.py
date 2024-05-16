import sys
import asyncio

sys.path.append('./infrastructure/api')

async def main():
    api = Api()
    await api.connect()
    data = await api.get_data()
    print(data)
if __name__ == "__main__":
    asyncio.run(main())