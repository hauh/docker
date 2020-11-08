git submodule update &&
docker build ft-rails -t ft-rails:on-build &&
docker build . -t ex02 &&
docker run -it -d -p 3000:3000 --rm --name ex02 ex02
