# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages
RUN pip install --no-cache-dir -r requirements.txt

# Install Node.js and npm
RUN apt-get update && apt-get install -y nodejs npm

# Install Vue CLI
RUN npm install -g @vue/cli

# Add Flask
RUN echo "Flask==1.1.2" >> requirements.txt

# Install Flask
RUN pip install flask

