FROM alpine:3.10

COPY LICENSE README.md entrypoint.sh /

COPY src/create-envfile.py /create-envfile.py

RUN echo 'https://dl-4.alpinelinux.org/alpine/v3.10/main' >> /etc/apk/repositories && apk add python3

ENTRYPOINT ["/entrypoint.sh"]
