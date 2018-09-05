FROM archlinux/base:latest
LABEL maintainer="<hack.augusto@gmail.com>"
ENV LANG en_US.UTF-8
ENV XTERM_LOCALE en_US.UTF-8
ENV LC_COLLATE C
RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm firefox

ENTRYPOINT [ "/usr/bin/firefox" ]
CMD [ "-ProfileManager", "-no-remote" ]
