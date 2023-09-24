# Use an official Python runtime as the base image
FROM python:3.8-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask
RUN pip install flask

# Make port 5000 available for the app
EXPOSE 5000

# Run app.py when the container is launched
CMD ["python", "app.py"]
