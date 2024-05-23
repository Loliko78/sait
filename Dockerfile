FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt -y install python3-pip
RUN pip3 install -r requirements.txt
ENTRYPOINT ['python']
CMD ['python main.py']
