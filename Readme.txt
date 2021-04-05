###################
#                 #
#  Docker Deploy  #
#                 #
###################

Build:
docker build -t rmadridbasket/alpine-server:1.0 .

Run:
docker run --rm -it --name rmadridbasket rmadridbasket/alpine-server:1.0 /bin/sh
