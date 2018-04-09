FROM python:3-slim
COPY requirements.txt /usr/src
ENV FLASK_APP=app.py
WORKDIR /usr/src
COPY . /usr/src/
RUN pip install -r /usr/src/requirements.txt
CMD ["flask","run"]
