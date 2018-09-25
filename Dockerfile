FROM alpine:edge


ENV LANG C.UTF-8

RUN    apk add --update --no-cache ca-certificates  \
        && apk add --no-cache --virtual .run-deps \
                ffmpeg \
                libmagic \
                python3 \
                py3-numpy \
                py3-pillow \
                libwebp \
                git \
                py3-yaml \
                py3-requests \
                gcc 
               

RUN set -ex \
        && pip3 install --upgrade pip \
        && pip3 install git+https://github.com/blueset/ehforwarderbot.git \
        && pip3 install git+https://github.com/blueset/efb-telegram-master.git \
        && pip3 install git+https://github.com/blueset/efb-wechat-slave.git \
        && pip3 install pyqrcode \
        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
