#!/bin/bash -xu

dir0=$(cd `dirname $0` && pwd)

source $dir0/common.sh

env COMPRESSION=Snappy $TSDB_HOME/share/opentsdb/tools/create_table.sh

exit 0
