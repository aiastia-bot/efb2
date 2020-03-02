FROM ubuntu:latest
#2020-02-28

ENV LANG C.UTF-8

RUN sudo apt-get update 

    && sudo apt-get upgrad

    && apt-get install python3 python3-dev libffi-dev libssl-dev ffmpeg musl-dev gcc  g++ py3-numpy py3-yaml py3-pillow py3-requests libmagic libweb libffi-dev openssl-dev git 

RUN pip3 install -U pip \
    && pip install --ignore-installed PyYAML
    && pip3 install efb-telegram-master \
    && pip3 install efb-wechat-slave \
    && pip3 install ehforwarderbot \
    && pip3 install python-telegram-bot \
    && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
