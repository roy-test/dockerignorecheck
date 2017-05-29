FROM alpine

WORKDIR /check

CMD [ "/bin/find", ".", "-type", "f"]
