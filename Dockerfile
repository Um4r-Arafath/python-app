FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=hello_world.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY . .

CMD [ "flask", "run" ]
