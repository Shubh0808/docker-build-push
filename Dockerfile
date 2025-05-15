FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt -v

# Copy all the content from the local directory to the container
COPY . .

# (Optional) List the contents for debugging
RUN ls -al /app

# Expose port 5000
EXPOSE 5000

# Set environment variable
ENV NAME World

# Run the Flask app
CMD ["python", "app.py"]
