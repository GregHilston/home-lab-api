FROM python:3.7

RUN apt-get update -y
RUN apt-get install -y etherwake

COPY . home-lab-api
RUN pip3 install -r home-lab-api/requirements.txt

COPY . .

ENV FLASK_APP=api.py
ENV FLASK_ENV=development

CMD [ "gunicorn", "-b", "localhost:8000", "-w", "4", "api:app" ]