FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt -y install python3-pip
RUN python3 -m venv .venv
RUN source .venv/bin/activate
RUN python3 -m pip install -r requirements.txt
ENTRYPOINT ['python']
CMD ['python main.py']
