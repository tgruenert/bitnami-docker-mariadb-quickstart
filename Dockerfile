FROM bitnami/mariadb:10.5.12-debian-10-r32

USER 0

RUN apt-get update
RUN install_packages patch
COPY libmariadb.sh.diff /opt/bitnami/scripts/
RUN patch /opt/bitnami/scripts/libmariadb.sh /opt/bitnami/scripts/libmariadb.sh.diff 

USER 1001
