FROM ultralytics/ultralytics:latest

# Install system dependencies for RealSense
RUN apt-get update && apt-get install -y \
    libusb-1.0-0-dev \
    libglfw3-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    && rm -rf /var/lib/apt/lists/*

# Install pyrealsense2
RUN pip install pyrealsense2

# Set working directory
WORKDIR /app

# Your code will go here
