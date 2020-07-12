FROM alpine:edge

#2019*5.2
ENV LANG C.UTF-8

RUN    apk add --update --no-cache ca-certificates  \
        && apk add --no-cache python3 python3-dev python3-pip libffi-dev libssl-dev ffmpeg musl-dev git \
        && pip3 install -U pip

RUN set -ex \
        && pip3 install --upgrade pip \
        && pip3 install pyqrcode \
        #&& pip3 install efb-telegram-master==2.0.0b18 \
        #&& pip3 install efb-wechat-slave==2.0.0a17 \
        #&& pip3 install ehforwarderbot==2.0.0b14 \
        #&& pip3 install python-telegram-bot==11.1.0 \
        && pip3 install efb-telegram-master \
        && pip3 install efb-wechat-slave \
        && pip3 install ehforwarderbot \
        && pip3 install python-telegram-bot \
        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
