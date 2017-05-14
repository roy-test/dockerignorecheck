FROM alpine
COPY . /check

WORKDIR /check

RUN apk --update --no-cache add postgresql-client

COPY docker_wait_postgres.sh /code/docker_wait_postgres.sh

CMD [ "/bin/find", ".", "-type", "f"]
