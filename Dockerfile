FROM debian:10-slim
RUN apt update -y && \
    apt install -y wget  && \
    apt install -y unzip

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
