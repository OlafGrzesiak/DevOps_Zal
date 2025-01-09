# Base image for Python
FROM python:3.14.0a2-alpine3.21

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files from the current directory on the host to the /app directory in the container
COPY . .

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000, which will be used by the application
EXPOSE 5000

# Default command to run when the container starts
CMD ["python", "main.py"]
