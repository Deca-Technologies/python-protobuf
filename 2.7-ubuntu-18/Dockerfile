FROM ubuntu:18.04

RUN apt-get update &&\
    apt-get install -y wget build-essential &&\
    wget https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz &&\
    tar xzf protobuf-2.6.1.tar.gz &&\
    cd protobuf-2.6.1 &&\
    ./configure &&\
    make &&\
    make check &&\
    make install &&\
    ldconfig &&\
    protoc --version &&\
    cd .. && rm protobuf-2.6.1.tar.gz && rm -r protobuf-2.6.1