#!/bin/sh
apk update
apk add postgresql-contrib postgresql-client postgresql

mv /root/docker/run.sh /var/lib/postgresql/run.sh

mkdir /data

apk add shadow
usermod -d /data postgres


chown postgres:postgres -Rf /var/lib/postgresql/ /data
chmod -Rf 700 /data
chmod +x /var/lib/postgresql/run.sh
# chcon -Rt svirt_sandbox_file_t /data

apk del shadow
rm -Rf /etc/apk/cache
