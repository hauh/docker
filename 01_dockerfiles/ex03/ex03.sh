# docker-machine stop Char
# VBoxManage modifyvm Char --cpus 4
# VBoxManage modifyvm Char --memory 4096
# docker-machine start Char
docker build -t ex03 . &&
docker run -it -p 1080:80 -p 1022:22 -p 1443:443 --privileged --rm --name ex03 ex03
