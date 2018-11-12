FROM alpine:latest

ENV LANG C.UTF-8

RUN apk add --update --no-cache ca-certificates

RUN set -ex \
        && apk add --no-cache --virtual .run-deps \
                ffmpeg \
                libmagic \
                python3 \
                py3-numpy \
                py3-pillow
                
RUN apk add gcc \
            py3-yaml \
            py3-requests \
            ffmpeg \
            libwebp 
                

RUN  pip3 install ehforwarderbot efb-telegram-master efb-wechat-slave

RUN  pip3 install --upgrade git+https://github.com/blueset/ehforwarderbot.git \
        && pip3 install --upgrade git+https://github.com/blueset/efb-telegram-master.git \
        && pip3 install --upgrade git+https://github.com/blueset/efb-wechat-slave.git \
        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
