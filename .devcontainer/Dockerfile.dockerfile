# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y nodejs npm

RUN npm install -g @vue/cli

RUN echo "Flask==1.1.2" >> requirements.txt

RUN pip install flask

RUN pip install django