FROM python:3.6
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

ADD . /app/

COPY ./entrypoint.sh /

ENTRYPOINT ["sh", "/entrypoint.sh"]
