FROM ubuntu:latest
#2020-02-28

ENV LANG C.UTF-8

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get update \
    && apt-get upgrade \
    && apt-get install -y python3 \
                          python3-dev \
                          python3-pip \
                          libffi-dev \
                          libssl-dev \
                          ffmpeg \
                          musl-dev \
                          git

RUN pip3 install -U pip \
    && pip install --ignore-installed PyYAML  \
    && pip3 install efb-telegram-master \
    && pip3 install efb-wechat-slave \
    && pip3 install ehforwarderbot \
    && pip3 install python-telegram-bot \
    && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
