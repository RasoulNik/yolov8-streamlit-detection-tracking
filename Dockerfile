# Use an official Python runtime as a parent image
FROM python:3.10.5-slim

# Install system dependencies for OpenCV and GLib
RUN apt-get update && apt-get install -y \
    python3-pip python3-dev libgl1-mesa-glx libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file into the container at /usr/src/app
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install  -r requirements.txt

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Make port 8501 available to the world outside this container
EXPOSE 8501

# Define environment variable
ENV NAME ObjectDetectionYOLOv8

# Run app.py when the container launches
CMD ["streamlit", "run", "app.py"]
