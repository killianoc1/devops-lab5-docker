# Use official python image (use 3.11 for Flask compatibility)
FROM python:3.11-slim

# Set a working directory
WORKDIR /app

# Copy requirements first (cache point)
COPY requirements.txt .

# Install Python deps
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose Flask default port
EXPOSE 5000

# Default command to run the app
CMD ["python", "app.py"]
