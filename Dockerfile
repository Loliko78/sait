$ cat my_flask_app/Dockerfile
FROM ubuntu:latest
MAINTAINER Andrey Maksimov 'maksimov.andrei@gmail.com'
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app 
RUN pip install -r requirements.txt
ENTRYPOINT ['python']
CMD ['python main.py']
