FROM python:3.8-buster

USER root

WORKDIR /app
ADD . /app/

RUN pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com --upgrade pip \
  && pip install -r requirements/local.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
