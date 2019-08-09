# Python Base Image from https://hub.docker.com/r/arm32v7/python/
FROM arm32v7/python:2.7.13-jessie

# Copy the Python Script to blink LED
COPY blinkled.py ./

# install gpio library
RUN pip install --no-cache-dir gpiozero

# Trigger Python script
CMD ["python", "./blinkled.py"]
