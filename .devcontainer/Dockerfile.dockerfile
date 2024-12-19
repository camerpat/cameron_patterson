# Use an official Python runtime as a parent image
FROM mcr.microsoft.com/devcontainers/universal:2-linux

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update && apt-get install -y nodejs npm

RUN npm install -g @vue/cli

RUN pip install flask

RUN pip install django