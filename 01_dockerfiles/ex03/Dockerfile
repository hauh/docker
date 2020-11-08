FROM debian

RUN \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl openssh-server ca-certificates postfix && \
    curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash && \
    apt-get install -y gitlab-ce

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure
