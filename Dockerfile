# Use lightweight Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Run the test or application
CMD ["python", "app.py"]
