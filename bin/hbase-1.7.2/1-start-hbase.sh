#!/bin/bash -xu

curdir=$(cd `dirname $0` && pwd)

cd `realpath $curdir` || exit 1

source common.sh

ulimit -Hn 100000
ulimit -Sn 100000

$HBASE_HOME/bin/start-hbase.sh

exit 0
