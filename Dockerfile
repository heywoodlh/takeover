FROM python:3-alpine

WORKDIR /app

ADD . .

RUN python3 setup.py install

ENTRYPOINT ["python3", "/app/takeover.py"]
CMD ["-v"]
