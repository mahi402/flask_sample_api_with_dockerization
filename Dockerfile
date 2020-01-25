# From python-alpine image
FROM python:3.7.2-alpine3.9

# Label for this image
LABEL maintainer="Chayut Ruksomya <chayut.191@gmail.com>"

# Set up env variable
ENV FLASK_PORT 8080
ENV FLASK_HOST 0.0.0.0

# Copy all file in this directory into "app" folder inside container
COPY . /app

# Change directory into "app" folder (inside container)
WORKDIR /app

# Run pip command to install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set entrypoint to use "python" command instead of bash in Ubuntu
ENTRYPOINT ["python"]

# Expose port 8080 to makesure that server will run from this port inside the container
EXPOSE 8080

# The final step will be "python server/server.py" ;)
CMD ["server/server.py"]
