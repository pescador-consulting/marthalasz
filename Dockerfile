FROM harbor.tilyes.eu/dockerhub_proxy_cache/library/python:3.7

WORKDIR /app

COPY ./requirements /app/requirements

RUN pip install -r /app/requirements.txt

EXPOSE 5000

COPY . /app

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]