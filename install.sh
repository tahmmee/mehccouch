ps aux | grep couchbase && ps aux | grep couchbase | awk '{print $2}' | xargs -I '{}' kill -9 '{}'
sleep 1
ps aux | grep couchbase && ps aux | grep couchbase | awk '{print $2}' | xargs -I '{}' kill -9 '{}'
cd && apt-get remove -y couchbase-server  && rm -rf /opt/couchbase && rm -rf /data/*
dpkg --purge --force-all couchbase-server
wget http://172.23.120.24/builds/latestbuilds/couchbase-server/watson/$1/couchbase-server-enterprise_4.5.0-$1-ubuntu14.04_amd64.deb
dpkg -i couchbase-server-enterprise_4.5.0-$1-ubuntu14.04_amd64.deb
