FROM alpine
COPY . /check

WORKDIR /check

CMD [ "/bin/find", ".", "-type", "f"]
