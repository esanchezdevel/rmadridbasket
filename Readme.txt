###################
#                 #
#  Docker Deploy  #
#                 #
###################

Build:
docker build -t rmadridbasket/alpine-server:1.0 .

Run:
docker run -it --name rmadridbasket --network rmadridbasket -p 127.0.0.1:8081:8080 rmadridbasket/alpine-server:1.0 /bin/sh
