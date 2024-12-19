FROM mcr.microsoft.com/devcontainers/universal:2-linux

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update && apt-get install -y python3 python3-pip xz-utils && \
apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install -g @vue/cli

RUN pip install flask

RUN pip install django