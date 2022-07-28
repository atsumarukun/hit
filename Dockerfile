FROM ubuntu:22.04

RUN apt update && apt -y install tzdata language-pack-ja
ENV TZ=Asia/Tokyo
ENV LANG=ja_JP.UTF-8

RUN apt -y install libpq-dev python3 python3-pip && \
    python3 -m pip install psycopg2 django
