FROM debian:buster

RUN apt-get update && \
    apt-get install -y wget python3 libxcb1 libgl1 qt5-default libnss3

RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin

WORKDIR /data

ENTRYPOINT ["ebook-convert"]
