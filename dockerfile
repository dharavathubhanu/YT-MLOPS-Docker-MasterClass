# Use an official python runtime as a parent image
FROM python:3.8-slim
#set the working directory in the container
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# Install any needed packages specified in requirements.txt
RUN pip isntall --no-cache-dir -r requirements.txt
# Make port 5000 avaiable to the world outside this container
EXPOSE 5000
# Defines environment variable
ENV FLASK_APP=app.py
#Run the Flask app
CMD ["flask","run","--host=0.0.0.0"]