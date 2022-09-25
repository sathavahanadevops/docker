docker build -t sathadocker/ngnixsatha:v1 .
docker exec -it nginx bash
ctrl d
docker images
docker stop
docker ps
docker run --rm -d --name nginx --publish 8000:80 -p 8080:8080 sathadocker/ngnixsatha:v1
