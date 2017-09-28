FROM distro/archlinux:latest
MAINTAINER Silvio Greuel <silviogreuel@gmail.com>

RUN pacman -S awesome --noconfirm

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
RUN locale-gen

RUN pacman -S terminus-font --noconfirm

CMD exec awesome 
