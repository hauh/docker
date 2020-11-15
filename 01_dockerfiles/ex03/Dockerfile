FROM debian

ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm
ARG GITLAB_IP

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y curl openssh-server ca-certificates git tzdata

RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
RUN apt-get update -y && apt-get install -y --no-install-recommends gitlab-ce
RUN mkdir -p /etc/gitlab/ssl && \
    chmod 700 /etc/gitlab/ssl && \
    openssl req -new -x509 -nodes -newkey rsa:2048 -keyout /etc/gitlab/ssl/gitlab.key -out /etc/gitlab/ssl/gitlab.crt -days 365 -subj /CN=${GITLAB_IP} && \
    sed -i -e "s|^\(external_url\) .*$|\1 'https://${GITLAB_IP}'|" \
    -e "s|^# \(nginx\['ssl_certificate'\] = \"/etc/gitlab/ssl\)/.*$|\1/gitlab.crt\"|" \
    -e "s|^# \(nginx\['ssl_certificate_key'\] = \"/etc/gitlab/ssl\)/.*$|\1/gitlab.key\"|" \
    -e "s|^# \(gitlab_rails\['gitlab_shell_ssh_port'\] = 22\)$|\1|" \
    /etc/gitlab/gitlab.rb

EXPOSE 443 22

ENTRYPOINT  service ssh start && \
	    (/opt/gitlab/embedded/bin/runsvdir-start &) && \
	    gitlab-ctl reconfigure && \
	    gitlab-ctl tail
