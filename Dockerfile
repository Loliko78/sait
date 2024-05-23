
FROM ubuntu:latest
MAINTAINER Andrey Maksimov 'maksimov.andrei@gmail.com'
RUN apt-get update -y
RUN apt-get install python3 -y
RUN python3 -m venv /venv
RUN apt -y install python3-pip
RUN pip3 install -r requirements.txt
ENTRYPOINT ['python3']
CMD ['python3 main.py']
