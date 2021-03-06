FROM python:stretch

COPY . /app
WORKDIR /app


RUN pip3 install -r requirements.txt


EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", ":80", "main:APP"]