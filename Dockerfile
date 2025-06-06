# Use official Python base image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements if any (you can create requirements.txt)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose port 5000 for Flask app
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]