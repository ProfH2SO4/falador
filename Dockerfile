# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable for verbosity
# This is optional and can be removed if not needed
ENV UWSGI_HTTP_TIMEOUT=300

# Start uWSGI
CMD ["uwsgi", "--ini", "uwsgi.ini"]
