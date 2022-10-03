#!/bin/bash -xu

dir0=$(cd `dirname $0` && pwd)

source $dir0/common.sh

$HBASE_HOME/bin/stop-hbase.sh

exit 0
