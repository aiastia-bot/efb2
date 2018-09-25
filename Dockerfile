FROM alpine:edge


ENV LANG C.UTF-8

RUN    apk add --update --no-cache ca-certificates  \
        && apk --update add tzdata ca-certificates \
       ffmpeg libmagic python3 \
       tiff libwebp freetype lcms2 openjpeg py3-olefile openblas \ 
       && apk add --no-cache --virtual .build-deps build-base gcc python3-dev zlib-dev jpeg-dev libwebp-dev \
       && pip3 install numpy pillow pysocks  \
                
               

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
