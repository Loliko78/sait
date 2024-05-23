FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt -y install python3-pip
RUN sudo apt-get install python3.6-venv
RUN source .venv/bin/activate
RUN python3 -m venv .venv
RUN python3 -m pip3 install -r requirements.txt
ENTRYPOINT ['python']
CMD ['python main.py']
