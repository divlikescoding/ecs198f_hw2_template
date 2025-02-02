FROM debian:bookworm

RUN apt-get update && apt-get install -y curl git bash 

RUN curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b
RUN rm Miniconda3-latest-Linux-x86_64.sh 

RUN git clone https://github.com/dbarnett/python-helloworld

CMD ["tail", "-f", "/etc/os-release"]