docker build --build-arg GITLAB_IP=$(docker-machine ip Char) -t ex03 . &&
docker run -it -p 8022:22 -p 8443:443 --privileged --name ex03 ex03
