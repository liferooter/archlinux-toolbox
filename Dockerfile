FROM docker.io/archlinux:latest

LABEL com.github.containers.toolbox="true" \
      name="archlinux-toolbox" \
      version="latest" \
      usage="This image is meant to be used with toolbox tool" \
      summary="Base image for creating Arch Linux toolbox containers" \
      maintainer="Gleb Smirnov <glebsmirnov0708@gmail.com>"

RUN mkdir /etc/krb5.conf.d
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm sudo bash-completion base-devel flatpak-xdg-utils mlocate
RUN echo "%wheel    ALL=(ALL)   NOPASSWD: ALL" > /etc/sudoers.d/toolbox
RUN echo 'PS1="$(tput setaf 12; tput bold)⬢$(tput sgr0)[\u@\h \W]$ "' >> /etc/bash.bashrc
RUN echo 'PROMPT_COMMAND=""' >> /etc/bash.bashrc
RUN touch /etc/machine-id
RUN sed -i s/^NoExtract.*$//g /etc/pacman.conf

CMD /bin/sh
