FROM ubuntu

RUN apt-get -y update && apt-get -y upgrade && \
    apt-get -y install build-essential

COPY source /opt/app/
WORKDIR /opt/app

RUN make
ENTRYPOINT ./app
