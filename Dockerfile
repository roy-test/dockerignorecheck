FROM alpine

WORKDIR /check

COPY docker_wait_postgres.sh /code/docker_wait_postgres.sh

CMD [ "/bin/find", ".", "-type", "f"]
