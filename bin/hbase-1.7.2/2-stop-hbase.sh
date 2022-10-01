#!/bin/bash -xu

curdir=$(cd `dirname $0` && pwd)

cd `realpath $curdir` || exit 1

source common.sh

$HBASE_HOME/bin/stop-hbase.sh

exit 0
