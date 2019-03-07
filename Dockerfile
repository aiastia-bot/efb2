FROM alpine:latest
#2019.2.8

ENV LANG C.UTF-8

RUN apk add --update --no-cache ca-certificates \
    && apk add --no-cache --virtual .run-deps \
    musl-dev \
    gcc \
    g++ \   
    python3 \
    python3-dev\
    py3-numpy \
    py3-yaml \
    py3-pillow \
    py3-requests \
    ffmpeg \
    libmagic \
    libwebp \
    libffi-dev \
    openssl-dev \
    git 
    
RUN pip3 install -U pip \
    && pip3 install efb-telegram-master \
    && pip3 install efb-wechat-slave \
    && pip3 install ehforwarderbot \
    && pip3 install python-telegram-bot \
    #&& pip3 install git+https://github.com/blueset/ehforwarderbot.git \
    #&& pip3 install git+https://github.com/blueset/efb-telegram-master.git \
    #&& pip3 install git+https://github.com/blueset/efb-wechat-slave.git \
    # && pip3 install python-telegram-bot --upgrade \
    && pip3 install python-telegram-bot==10.0.0 \
    && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
