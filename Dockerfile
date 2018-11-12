FROM alpine:latest

ENV LANG C.UTF-8

RUN apk add --update --no-cache ca-certificates

RUN set -ex \
        && apk add --no-cache --virtual .run-deps \
                ffmpeg \
                libmagic \
                python3.6 \
                py3-numpy \
                py3-pillow
                
RUN apk add gcc \
            py3-yaml \
            py3-requests \
            ffmpeg \
            libwebp 
            
RUN apk add python3.6-gdbm \
            python3-pip \
            libtiff5-dev \
            libjpeg8-dev \
            zlib1g-dev \
            libfreetype6-dev \
            liblcms2-dev \
            libwebp-dev \
            tcl8.5-dev \
            tk8.5-dev \
            git \
            libmagic-dev \
            autoconf \
            automake \
            libtool \
            python-setuptools \
            python-pip \
            screen  
RUN pip install --upgrade pip \
    && pip3 install pillow       
                

RUN  pip3 install ehforwarderbot efb-telegram-master efb-wechat-slave

RUN  pip3 install --upgrade git+https://github.com/blueset/ehforwarderbot.git \
        && pip3 install --upgrade git+https://github.com/blueset/efb-telegram-master.git \
        && pip3 install --upgrade git+https://github.com/blueset/efb-wechat-slave.git \
        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
