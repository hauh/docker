FROM gcc
WORKDIR /opt/app
COPY Makefile .
COPY source ./source
RUN make
CMD ./app
