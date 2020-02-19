FROM python:3.7

RUN apt-get update -y
RUN apt-get install -y etherwake lsof

ADD requirements.txt /root/requirements.txt

RUN pip3 install -r root/requirements.txt

ENV FLASK_APP=api.py
ENV FLASK_ENV=development

ADD bootstrap.sh /root/bootstrap.sh

CMD ["/root/bootstrap.sh"]
