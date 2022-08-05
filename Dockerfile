FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]

WORKDIR /var/reactdiscordbot

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install git zip unzip python3 curl wget \
    python3 python3-pip python3-lxml speedtest-cli libpq-dev \
    gcc g++ libffi-dev \
    make autoconf automake libtool software-properties-common -y

COPY . .

RUN pip3 install wheel && pip3 install --upgrade setuptools

RUN pip3 install --no-cache-dir -U -r requirements.txt

ENV LANG="en_US.UTF-8" LANGUAGE="en_US:en" LC_ALL="en_US.UTF-8"

RUN rm -r .git -f

CMD ["bash", "start.sh"]
