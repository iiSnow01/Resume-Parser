# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.10-slim



WORKDIR /app
COPY . /app

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt


# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["python", "Parsing.py"]
