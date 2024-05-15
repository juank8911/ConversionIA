#!/bin/bash

# Variables
keyPass="fYHsUNn5Cj3PnmaJDYSV1aendqKtO3jj2qsLzcEy"
projectName="ATI"

# Create project directory
mkdir -p ${projectName}/{adapters,application,domain,infrastructure,interfaces,main}

# Create adapters directory
mkdir -p ${projectName}/adapters/{api,defi_api,trynity_rl}

# Create application directory
mkdir -p ${projectName}/application/{use_cases,services}

# Create domain directory
mkdir -p ${projectName}/domain/{models,repositories}

# Create infrastructure directory
mkdir -p ${projectName}/infrastructure/{api,database,trynity_rl/{training,test,develop}}

# Create interfaces directory
mkdir -p ${projectName}/interfaces/{api,defi_api,trynity_rl}

# Create main directory
mkdir -p ${projectName}/main

# Create api_adapter.py
touch ${projectName}/adapters/api/api_adapter.py

# Create defi_api_adapter.py
touch ${projectName}/adapters/defi_api/defi_api_adapter.py

# Create trynity_rl_adapter.py
touch ${projectName}/adapters/trynity_rl/trynity_rl_adapter.py

# Create get_defi_data_use_case.py
touch ${projectName}/application/use_cases/get_defi_data_use_case.py

# Create defi_data_service.py
touch ${projectName}/application/services/defi_data_service.py

# Create trynity_rl_service.py
touch ${projectName}/application/services/trynity_rl_service.py

# Create defi_data_model.py
touch ${projectName}/domain/models/defi_data_model.py

# Create defi_data_repository.py
touch ${projectName}/domain/repositories/defi_data_repository.py

# Create trynity_rl_repository.py
touch ${projectName}/domain/repositories/trynity_rl_repository.py

# Create api.py
touch ${projectName}/infrastructure/api/api.py

# Create database.py
touch ${projectName}/infrastructure/database/database.py

# Create trynity_rl.py
touch ${projectName}/infrastructure/trynity_rl/develop/trynity_rl.py

# Create api_interface.py
touch ${projectName}/interfaces/api/api_interface.py

# Create defi_api_interface.py
touch ${projectName}/interfaces/defi_api/defi_api_interface.py

# Create trynity_rl_interface.py
touch ${projectName}/interfaces/trynity_rl/trynity_rl_interface.py

# Create main.py
touch ${projectName}/main/main.py

# Encrypt keyPass
openssl enc -aes-256-cbc -salt -in <(echo ${keyPass}) -out ${projectName}/.env

echo "Project ${projectName} created successfully!"