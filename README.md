# apscheduler
Build docker image-
docker build -t apscheduler:latest .

Start docker container-
docker run apscheduler:latest

View logs on container-
docker logs `docker ps | grep apscheduler:latest | cut -d' ' -f1`
