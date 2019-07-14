FROM ubuntu:18.04

MAINTAINER Mehmet Ali Baykara <baykara@encoway.de>

RUN  DEBIAN_FRONTEND=noninteractive 
#Dependencies and packages update/ugrade system
RUN  apt-get update && apt upgrade -y && apt install -y  cmake git vim \
	  python3-dev libncurses5-dev libxml2-dev \
	  libedit-dev swig doxygen graphviz xz-utils ninja-build

# install perf tools
RUN apt install -y linux-tools-$(uname -r) linux-tools-generic

# fetch google/benchmarking repo
RUN git clone https://github.com/google/benchmark.git 


#Clang 8 as compiler 
RUN apt-get update && apt-get install -y \
  xz-utils \
  build-essential \
  curl \
  && rm -rf /var/lib/apt/lists/* \
  && curl -SL http://releases.llvm.org/8.0.0/clang+llvm-8.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz \
  | tar -xJC . && \
  mv clang+llvm-8.0.0-x86_64-linux-gnu-ubuntu-18.04 clang_8.0.0 && \
  echo 'export PATH=/clang_8.0.0/bin:$PATH' >> ~/.bashrc && \
  echo 'export LD_LIBRARY_PATH=/clang_8.0.0/lib:LD_LIBRARY_PATH' >> ~/.bashrc


# Start from a Bash prompt
CMD [ "/bin/bash" ]

