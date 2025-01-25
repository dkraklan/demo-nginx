# Use a lightweight base image with Python installed
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app's code
COPY . .

# Expose port 8000 to the host
EXPOSE 8000

# Run the application
CMD ["python", "app.py"]
