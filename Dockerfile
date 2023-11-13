FROM busybox:1.35

ENV APP_DIR=/app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

COPY ./bin/demo ./demo

EXPOSE 9080

ENTRYPOINT [ "/app/demo" ]
