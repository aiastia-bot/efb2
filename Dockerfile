FROM alpine:latest

ENV LANG C.UTF-8

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache
    
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
    python3-dev \
    py3-numpy \
    py3-yaml \
    py3-pillow \
    py3-requests \
    ffmpeg \
    libmagic \
    libwebp \
    libffi-dev \
    openssl-dev

RUN  pip3 install ehforwarderbot efb-telegram-master efb-wechat-slave

RUN    pip3 install --upgrade pip \
        && pip3 install ehforwarderbot \
        && pip3 install efb-telegram-master \
        && pip3 install efb-wechat-slave \
        && pip3 install git+https://github.com/blueset/ehforwarderbot.git \
        && pip3 install --upgrade pip \
        && pip3 install pyqrcode \
        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
