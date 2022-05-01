FROM python:3.6-slim-buster

WORKDIR /python-docker

RUN pip install flask
RUN pip install flask-sqlalchemy
RUN pip install gunicorn

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

## docker pull gilangvperdana/apps:flaskcrud1