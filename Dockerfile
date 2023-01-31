FROM debian:bookworm

RUN apt-get update && \
apt-get install -y git build-essential autoconf texinfo \
  libgnutls28-dev libsqlite3-dev libsystemd-dev \
  libgtk-3-dev libotf-dev libjansson-dev libgccjit-12-dev \
  libxpm-dev libgif-dev libm17n-dev libgmp-dev libwebkit2gtk-4.0-dev\
  libxml2-dev libattr1-dev libacl1-dev mailutils \
  libmagickwand-dev libncurses-dev libtree-sitter-dev

ADD build-emacs.sh /usr/local/bin/build-emacs.sh

