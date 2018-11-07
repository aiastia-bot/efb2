FROM alpine:edge


ENV LANG C.UTF-8

RUN    apk add --update --no-cache ca-certificates  \
        && apk add --no-cache --virtual .run-deps \
                ffmpeg \
                libmagic \
                libffi6 \
                libffi-dev \
                python3 \
                py3-numpy \
                py3-pillow \
                libwebp \
                git \
                py3-yaml \
                py3-requests \
                gcc \
                python-dev
              


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
