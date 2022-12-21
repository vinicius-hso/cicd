FROM python:3.7.2

WORKDIR /app

ADD . /app

RUN pip install -r requirements.txt

CMD exec gunicorn --bind :$PORT --workers 4 app:app