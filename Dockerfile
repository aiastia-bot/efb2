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
    && apt-get install -y git python3-dev ffmpeg libcairo2-dev libcairo2 \
    && apt-get install -y build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev

RUN pip3 install -U pip \
    && pip install --ignore-installed PyYAML  \
    && pip3 install efb-telegram-master \
    && pip3 install git+https://github.com/ehForwarderBot/efb-wechat-slave  \
    && pip3 install ehforwarderbot \
    && pip3 install python-telegram-bot


CMD ["ehforwarderbot"]
