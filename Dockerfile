FROM alpine:edge


ENV LANG C.UTF-8

RUN \
  apk update && \
  apk upgrade && \
  apk add --update --no-cache git \
    python3 \
    python3.6-gdbm \
    python3-pip \
    libtiff5-dev \
    libjpeg8-dev \
    zlib1g-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    tcl8.5-dev \
    tk8.5-dev \
    libmagic-dev \
    ffmpeg \
    gcc \
    make \
    autoconf \
    automake \
    libtool \
    python-setuptools \
    python-pip 
                
               

RUN set -ex \
        && pip3 install --upgrade pip \
        && pip3 install pillow \
        && pip3 install pyqrcode \
        && pip3 install ehforwarderbot \
        && pip3 install efb-telegram-master \
        && pip3 install efb-wechat-slave \
        && pip3 install git+https://github.com/blueset/ehforwarderbot.git \

        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
