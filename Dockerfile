FROM gcc as builder 
WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    automake libtool bison flex \
    gcc g++ make git

ENV CC=gcc
ENV CXX=g++

RUN git clone https://github.com/vlm/asn1c.git

WORKDIR /app/asn1c
RUN test -f configure || autoreconf -iv
RUN ./configure
RUN make
# RUN make check
RUN make install


FROM debian:stable-slim as runner

WORKDIR /app

COPY --from=builder /usr/local/bin/asn1c /usr/local/bin/
COPY --from=builder /usr/local/share/asn1c /usr/local/share/asn1c

RUN mkdir /app/out

CMD ["sh", "-c", "/usr/local/bin/asn1c -D /app/out /app/test.asn1"]
# ENTRYPOINT [ "sh", "-c", "echo Test" ]