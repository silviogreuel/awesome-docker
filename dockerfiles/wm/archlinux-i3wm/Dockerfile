FROM distro/archlinux:latest
MAINTAINER Silvio Greuel <silviogreuel@gmail.com>

RUN pacman -S i3 --noconfirm

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
RUN locale-gen

RUN pacman -S terminus-font git dmenu rofi nitrogen --noconfirm

WORKDIR /home/
RUN git clone https://github.com/unix121/i3wm-themer
WORKDIR /home/i3wm-themer/scripts/
RUN ./i3wmthemer -c
RUN ./i3wmthemer -t Forest

CMD exec i3
