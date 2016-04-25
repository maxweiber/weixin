FROM daocloud.io/python:2.7

RUN mkdir -p /app
WORKDIR /app
COPY . /usr/src/app

RUN pip install -r requirements.txt

EXPOSE 3000

CMD [ "python","index.py"]
