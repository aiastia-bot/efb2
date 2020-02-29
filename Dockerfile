FROM ubuntu:latest
#2020-02-28

ENV LANG C.UTF-8

RUN 
    export PYTHONIOENCODING=utf-8 
    sudo apt-get install python3 python3-dev libffi-dev libssl-dev ffmpeg 

    
RUN pip3 install -U pip \
    && pip install --ignore-installed PyYAML
    && pip3 install efb-telegram-master \
    && pip3 install efb-wechat-slave \
    && pip3 install ehforwarderbot \
    && pip3 install python-telegram-bot \
    && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
