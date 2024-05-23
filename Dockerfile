
FROM ubuntu:latest
MAINTAINER Andrey Maksimov 'maksimov.andrei@gmail.com'
RUN apt-get update -y
RUN apt -y install python-pip
RUN pip install -r requirements.txt
ENTRYPOINT ['python']
CMD ['python main.py']
