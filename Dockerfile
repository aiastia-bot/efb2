FROM ubuntu:latest


ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-pil \
        python3-numpy \
        python3-yaml \
        python3-requests \
        ffmpeg \
        libmagic-dev \
        libwebp-dev         
        
RUN   pip install --upgrade pip \
        && pip install pillow \
        && pip install pyqrcode               

RUN   pip install ehforwarderbot \
        && pip install efb-telegram-master \
        && pip install efb-wechat-slave \
        && pip install git+https://github.com/blueset/ehforwarderbot.git \
        && pip install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
