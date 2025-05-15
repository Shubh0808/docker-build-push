FROM python:3.11-slim


# Set the working directory inside the container
WORKDIR /app

# Copy requirements file
COPY requirements.txt requirements.txt

# Upgrade pip to latest version to avoid package resolution issues
RUN python -m pip install --upgrade pip

# Install dependencies from requirements.txt
# NOTE: Ensure your requirements.txt has click version compatible with Python 3.9 (e.g., click==8.1.8)
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
