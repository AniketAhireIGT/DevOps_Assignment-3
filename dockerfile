FROM python:3.8-slim-buster
 
WORKDIR /app
 
COPY app.py .
 
RUN pip install flask
 
EXPOSE 5000
 
# Command to run the app
CMD ["python", "app.py"]

# Use official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose the app port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
