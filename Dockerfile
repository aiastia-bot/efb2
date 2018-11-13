FROM alpine:latest

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
    vim \
    screen\
    libffi-dev \
    openssl-dev \
    git \
    && pip3 install -U pip \
    && pip3 install git+https://github.com/blueset/ehforwarderbot.git \
    && pip3 install git+https://github.com/blueset/efb-telegram-master.git \
    && pip3 install git+https://github.com/blueset/efb-wechat-slave.git \
    && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
