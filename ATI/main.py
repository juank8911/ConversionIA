import sys
from infrastructure.api import Api

def main():
    api = Api()
    api.connect()
    data = api.get_data()
    print(data)

if __name__ == "__main__":
    sys.exit(main())