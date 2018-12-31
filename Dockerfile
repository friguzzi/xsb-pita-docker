FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y build-essential subversion \
  libcurl4-openssl-dev \
  libpcre3-dev autoconf

RUN apt-get install -y file git

RUN apt-get install -y libreadline6-dev
RUN apt-get install -y vim
RUN mkdir sw
RUN cd sw && git clone https://github.com/hanslub42/rlwrap.git
RUN cd sw/rlwrap && autoreconf --install && ./configure && make && make install
RUN cd sw && svn checkout --trust-server-cert https://svn.code.sf.net/p/xsb/src/trunk/XSB xsb-src

RUN cd sw/xsb-src/build && ./configure --with-pita --prefix=/usr/local
RUN cd sw/xsb-src/build && ./makexsb && ./makexsb install
RUN echo 'alias xsb="rlwrap /sw/xsb-src/bin/xsb"'> /root/.bash_aliases

