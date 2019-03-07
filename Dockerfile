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
    && pip3 install git+https://github.com/blueset/ehforwarderbot.git \
    && pip3 install git+https://github.com/blueset/efb-telegram-master.git \
    && pip3 install git+https://github.com/blueset/efb-wechat-slave.git \
    && pip3 install python-telegram-bot --upgrade \
    && pip3 install git+https://github.com/python-telegram-bot/python-telegram-bot.git@c03160c07f89e30c7023fb12f7a372c3df17d74e \
    && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
