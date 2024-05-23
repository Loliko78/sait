
FROM ubuntu:latest
MAINTAINER Andrey Maksimov 'maksimov.andrei@gmail.com'
RUN apt-get update -y
RUN apt -y install python3-pip
COPY . /app
WORKDIR /app 
RUN pip3 install -r requirements.txt
ENTRYPOINT ['python']
CMD ['python main.py']
