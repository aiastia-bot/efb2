FROM alpine:edge

ENV LANG C.UTF-8

RUN \
  apk update && \
  apk upgrade && \
  apk add python3 python3-dev && \
  apk add --update --no-cache \
    bash \
    curl \
    dcron \
    dropbear \
    iproute2 \
    logrotate \
    openrc \
    openssh-client \
    openssh-sftp-server \
    openssl \
    procps \
    rsyslog \
    tzdata \
    numpy \
    yaml \
    pillow \
    ffmpeg \
    libmagic \
    libwebp \
  rm -rf /var/cache/apk/* 

RUN set -ex \
        && pip3 install --upgrade pip \
        && pip3 install ehforwarderbot \
        && pip3 install efb-telegram-master \
        && pip3 install efb-wechat-slave \
        && pip3 install git+https://github.com/blueset/ehforwarderbot.git \
        && pip3 install --upgrade pip \
        && pip3 install pyqrcode \
        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
