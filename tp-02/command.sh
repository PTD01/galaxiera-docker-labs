docker build -t ubuntu-apache:latest
docker run -d -p 5000:80 ubuntu-apache:latest
docker ps -a
curl localhost:5000
