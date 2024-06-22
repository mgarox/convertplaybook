# Convert Playbook

[![Python Logo](https://www.python.org/static/community_logos/python-logo.png)](https://www.python.org/)
[![Made with Jupyter](https://img.shields.io/badge/Made%20with-Jupyter-orange?style=for-the-badge&logo=Jupyter)](https://jupyter.org/try)

##### Convert Playbook is a program to convert exported elastic SIEM rule file in NDJSON format to Excel file. This program is powered by Python and Jupyter. This program is for individual purpose only.

## Features

- Select the specific field from exported elastic SIEM rule file to specific column in excel file
- Fill the specific field using ChatGPT API request  such as field "Description" and "Impact"
- Asynchronous ChatGPT API request to improve the speed performance
- Sending ChatGPT API with batching request to avoid the overwhelmed in ChatGPT API

## Tech

Convert Playbook uses Python libraries for running properly :

- [httpx 0.27.0](https://www.python-httpx.org/) - Sending HTTP Request Asynchronously
- [pandas 2.1.4](https://pandas.pydata.org/) - Cool library to manipulate/read data such as dataframe
- [numpy 1.26.4](https://numpy.org/) - Sub-dependencies of pandas to manipulate dataframe
- [asyncio](https://docs.python.org/3/library/asyncio.html) - Creating asynchronous function
- [tqdm 4.66.1](https://tqdm.github.io/) - Awesome progress bar in Python
- [openpyxl 3.1.2](https://openpyxl.readthedocs.io/en/stable/) - Saving the output file in .XLSX format
- [jupyter](https://jupyter.org/) - Flexible Web-based IDE

## Initialization

1. Create a directory "files" in "Convert_Playbook"
2. Export Elastic SIEM rule files in "Alerts" and save it in NDJSON format.
3. Copy the files to program directory "files"
4. Replace the "ELASTIC_RULES_JSON_FILE_PATH" with the full file path
5. Assign your ChatGPT API in constant variable "API_KEY"
6. Decrease the "BATCH_SIZE" for improving the performance speed (Default = 10). DON'T DECREASE THE VAULE OF "BATCH_SIZE" TO MUCH DUE TO RATE LIMITING OF CHATGPT API.

## Directory Hierarchy

```
%PATH%\CONVERT_PLAYBOOK
│   requirements.txt
│
├───files
│       rules.ndjson
│
└───programs
        Convert_Playbook.ipynb
```

## Installation

Convert Playbooks requires [Python v3.12.3](https://www.python.org/downloads/release/python-3123/) to run.

#### Manual Installation
Manual installation is creating virtual environment using "virtualenv" Python library and install the dependencies manually.

```sh
cd Convert_Playbook
pip install virtualenv
virtualenv -p "%PYTHON PATH%/python.exe" convert_playbook
convert_playbook/Scripts/activate
pip install -r requirements.txt
pip install jupyter notebook
jupyter notebook "programs/Convert Playbook.ipynb"
```

#### Automate Installation
Automate installation is using Docker to install in docker container.

```sh
mkdir Convert_Playbook
cd Convert_Playbook
docker pull mamanggarox/convertplaybook:latest
docker run --name ContainerConvertPlaybook -p 8888:8888 mamanggarox/convertplaybook:latest 
```