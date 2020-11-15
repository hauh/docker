FROM ubuntu
RUN \
    apt-get update && apt-get upgrade -y && \
    apt-get install -y python3 python3-venv python3-pip && \
    mkdir /opt/app
WORKDIR /opt/app
COPY requirements.txt .
RUN python3 -m venv venv
RUN venv/bin/pip install -r requirements.txt
