FROM golang:latest
RUN apt-get install -y ca-certificates
RUN git clone --branch v1.0.0-RC9 https://github.com/edenhill/librdkafka.git && \
    cd librdkafka && \
    ./configure --prefix=/usr && \
    make && \
    make install && \
    ldconfig && \
    cd .. && \
    rm -r librdkafka
