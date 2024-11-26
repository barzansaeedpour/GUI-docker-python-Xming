FROM python:3.10-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-tk \
    && apt-get clean

# Create an app directory
WORKDIR /app

# Copy your Python script into the container
COPY main.py /app

# Run the Python script
CMD ["python", "main.py"]

# set DISPLAY=192.168.1.6:0.0
# docker build -t gui-docker-python .
# docker run -it --rm --network host -e DISPLAY=%DISPLAY% -v /tmp/.X11-unix:/tmp/.X11-unix gui-docker-python