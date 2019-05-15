FROM golang:latest
RUN apt-get install -y ca-certificates tzdata
RUN git clone https://github.com/edenhill/librdkafka.git && \
    cd librdkafka && \
    ./configure --prefix=/usr && \
    make && \
    make install && \
    ldconfig && \
    cd .. && \
    rm -r librdkafka
