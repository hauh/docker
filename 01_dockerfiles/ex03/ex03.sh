docker build --build-arg GITLAB_IP=$(docker-machine ip Char) -t ex03 . &&
docker run --rm -it -p 8443:443 -p 8022:22 --privileged ex03
