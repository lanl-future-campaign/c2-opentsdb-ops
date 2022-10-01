#!/bin/bash -xu

curdir=$(cd `dirname $0` && pwd)

cd `realpath $curdir` || exit 1

source common.sh

for ty in snappy gz
do
	$HBASE_HOME/bin/hbase org.apache.hadoop.hbase.util.CompressionTest somefile $ty
done

exit 0
