FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
 && apt install -y git \
                   python3 \
                   python3-pip \
                   perl \
                   r-base \
                   csh \
                   tcsh \
                   openjdk-8-jre \
 && pip install pandas>=0.25.3 pyliftover==0.4

# Install CookHLA and copy helper scripts
RUN git clone https://github.com/WansonChoi/CookHLA.git /CookHLA
