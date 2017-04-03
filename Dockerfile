FROM 192.168.99.100:5002/hello/world:mine

COPY . /check

WORKDIR /check

CMD [ "/bin/find", ".", "-type", "f"]
