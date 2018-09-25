FROM ubuntu:latest


ENV LANG C.UTF-8

RUN   apt-get -y install python3 \
      && apt-get -y install python3-pip  \
      && apt-get -y install python3-pil   \
      && apt-get -y install python3-numpy   \
      && apt-get -y install python3-yaml   \
      && apt-get -y install python3-requests   \
      && apt-get -y install ffmpeg   \
      && apt-get -y install libmagic-dev   \
      && apt-get -y install libwebp-dev              

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
