FROM python:alpine3.19


RUN apk add --update --no-cache graphviz ttf-dejavu build-base git \
  && addgroup -g 1000 dot \
  && adduser -u 1000 -G dot -s /bin/sh -D dot

RUN pip install diagrams

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
