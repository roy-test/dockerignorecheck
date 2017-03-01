FROM busybox

LABEL "roy"="label"

# RUN sleep 60000

COPY . /check

WORKDIR /check

# RUN npm install gulp babel angular-cli ember-cli

CMD [ "/bin/find", ".", "-type", "f"]
