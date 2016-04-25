FROM daocloud.io/python:2.7

RUN mkdir -p /app
WORKDIR /app

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 3000

CMD [ "python","index.py"]
