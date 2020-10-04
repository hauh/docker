FROM debian
COPY install_teamspeak.sh .
RUN sh install_teamspeak.sh && \
    rm install_teamspeak.sh
WORKDIR /home/teamspeak
USER teamspeak
ENTRYPOINT sh teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh
