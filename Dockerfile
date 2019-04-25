FROM python:2.7-stretch

RUN wget https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz &&\
    tar xzf protobuf-2.6.1.tar.gz &&\
    cd protobuf-2.6.1 &&\
    apt-get update &&\
    apt-get install build-essential &&\
    ./configure &&\
    make &&\
    make check &&\
    make install &&\
    ldconfig &&\
    protoc --version 

