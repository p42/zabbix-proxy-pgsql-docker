FROM project42/s6-alpine:3.6
MAINTAINER Jordan Clark jordan.clark@esu10.org

COPY container-files /

RUN apk add --no-cache zabbix-pgsql zabbix-utils zabbix-setup postgresql-client

ENTRYPOINT ["/init"]

EXPOSE 10051
