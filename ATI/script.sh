#!/bin/bash

# Variables
projectName="TrinityIA"

# Create project directory
mkdir -p ${projectName}/{training,test,develop}}

# Create training directory
mkdir -p ${projectName}/training
touch ${projectName}/training/train_data.csv

# Create test directory
mkdir -p ${projectName}/test
touch ${projectName}/test/test_data.csv

# Create develop directory
mkdir -p ${projectName}/develop
touch ${projectName}/develop/develop_data.csv

echo "Project ${projectName} created successfully!"