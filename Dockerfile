# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Verify that requirements.txt is copied correctly
RUN ls -al /app

# Install dependencies from requirements.txt with verbose output
RUN pip install --no-cache-dir -r requirements.txt -v

# Make port 5000 available to the outside world
EXPOSE 5000

# Set environment variables (optional)
ENV NAME World

# Run the application
CMD ["python", "app.py"]
