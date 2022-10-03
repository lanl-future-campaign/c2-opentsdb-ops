#!/bin/bash -xu

dir0=$(cd `dirname $0` && pwd)

source $dir0/common.sh

env TZ=America/Denver _JAVA_OPTIONS="-Djava.net.preferIPv4Stack=true" JVMARGS="-Xmx8G -XX:MaxDirectMemorySize=8G -XX:+UseConcMarkSweepGC" nohup $TSDB_HOME/bin/tsdb tsd --port=4242 --async-io=true --worker-threads=32 --config=$HOME/etc/opentsdb-2.4.1/opentsdb.conf --auto-metric --staticroot=$TSDB_HOME/share/opentsdb/static --cachedir=/tmp/opentsdb-tmp --zkquorum=127.0.0.1 1>/tmp/opentsdb.STDOUT 2>/tmp/opentsdb.STDERR </dev/null &

exit 0
