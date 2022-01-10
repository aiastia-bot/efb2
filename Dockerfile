FROM ubuntu:latest
#2021-03-16

ENV LANG C.UTF-8

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y python3 \
    && apt-get install -y python3-dev \
    && apt-get install -y python3-pip \
    && apt-get install -y libffi-dev \
    && apt-get install -y libssl-dev \
    && apt-get install -y ffmpeg \
    && apt-get install -y musl-dev \
    && apt-get install -y git

RUN pip3 install -U pip \
    && pip install --ignore-installed PyYAML  \
    && pip3 install efb-telegram-master \
    && pip3 install efb-wechat-slave \
    && pip3 install ehforwarderbot \
    && pip3 install python-telegram-bot \
   # && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
