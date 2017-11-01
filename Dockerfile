FROM project42/s6-alpine:3.4
MAINTAINER Jordan Clark jordan.clark@esu10.org

COPY container-files /

RUN apk add --no-cache zabbix-pgsql zabbix-utils zabbix-setup

ENTRYPOINT ["/init"]

EXPOSE 10051
