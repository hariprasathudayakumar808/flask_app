# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy dependency file and install requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose port (Flask default is 5000)
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
