#!/bin/bash -xu

dir0=$(cd `dirname $0` && pwd)

source $dir0/common.sh

for ty in snappy gz
do
	$HBASE_HOME/bin/hbase org.apache.hadoop.hbase.util.CompressionTest somefile $ty
done

exit 0
