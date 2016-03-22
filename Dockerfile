FROM ubuntu:latest
RUN apt-get update && apt-get install -y texlive-luatex texlive-lang-cjk lmodern texlive-xetex
RUN apt-get install -y make
