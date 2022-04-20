#!/bin/sh

yum install -y git bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel gcc gcc-c++ autoconf automake libtool bison

git clone https://github.com/rbenv/ruby-build.git                                                                                                                                                    
PREFIX=/usr/local ./ruby-build/install.sh

RUBY_VERSION=$1
mkdir build 
ruby-build $RUBY_VERSION ./build

