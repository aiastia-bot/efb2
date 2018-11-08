FROM alpine:latest

ENV LANG C.UTF-8

RUN \
  apk update && \
  apk upgrade && \
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
    gcc \
    python3 \
    py3-numpy \
    py3-yaml \
    py3-pillow \
    py3-requests \
    ffmpeg \
    libmagic \
    libwebp \
    libffi-dev \
    openssl-dev


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
