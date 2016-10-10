FROM scratch
ADD rootfs.tar.xz /
CMD ["/bin/bash"]
RUN apt-get update && apt-get install -y vim
RUN mkdir var/www
