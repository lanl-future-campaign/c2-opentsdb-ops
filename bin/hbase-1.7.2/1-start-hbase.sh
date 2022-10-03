#!/bin/bash -xu

dir0=$(cd `dirname $0` && pwd)

source $dir0/common.sh

ulimit -Hn 100000
ulimit -Sn 100000

$HBASE_HOME/bin/start-hbase.sh

exit 0
