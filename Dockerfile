FROM python:3.8.15-slim-bullseye

WORKDIR /repo
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY test.ipynb .
