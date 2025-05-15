FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install dependencies from the requirements file
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy all the content from the local directory to the container
COPY . .

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
