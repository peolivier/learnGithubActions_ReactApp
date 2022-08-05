FROM alpine:3.11

COPY entrypoint.sh myscript/entrypoint.sh
RUN chmod +x myscript/entrypoint.sh

# ENTRYPOINT [ "/.github/actions/hello-docker/entrypoint.sh" ]
ENTRYPOINT [ "/myscript/entrypoint.sh" ]