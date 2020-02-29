FROM alpine:latest
#2020-02-28

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
    && pip install --ignore-installed PyYAML
    && pip3 install efb-telegram-master \
    && pip3 install efb-wechat-slave \
    && pip3 install ehforwarderbot \
    && pip3 install python-telegram-bot \
    && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
