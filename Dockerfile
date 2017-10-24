FROM project42/syslog-alpine:3.3
MAINTAINER Jordan Clark jordan.clark@esu10.org

COPY container-files /

RUN apk add --no-cache zabbix-pgsql

ENTRYPOINT ["/init"]

EXPOSE 10051
