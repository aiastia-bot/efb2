FROM alpine:edge

#2019*5.2
ENV LANG C.UTF-8

RUN    apk add --update --no-cache ca-certificates  \
        &&apk add --no-cache python3 python3-dev python3-pip libffi-dev libssl-dev ffmpeg musl-dev git

RUN set -ex \
        && pip install --upgrade pip \
        && pip install pyqrcode \
        #&& pip install efb-telegram-master==2.0.0b18 \
        #&& pip install efb-wechat-slave==2.0.0a17 \
        #&& pip install ehforwarderbot==2.0.0b14 \
        #&& pip install python-telegram-bot==11.1.0 \
        && pip install efb-telegram-master \
        && pip install efb-wechat-slave \
        && pip install ehforwarderbot \
        && pip install python-telegram-bot \
        && pip install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
