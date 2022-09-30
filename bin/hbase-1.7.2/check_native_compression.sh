#!/bin/bash

for ty in snappy gz
do
env JAVA_HOME=$HOME/opt/jdk1.8.0_341 \
HADOOP_HOME=$HOME/srv/hadoop-2.10.2 \
HBASE_HOME=$HOME/srv/hbase-1.7.2 \
HBASE_CONF_DIR=$HOME/etc/hbase-1.7.2 \
HBASE_LOG_DIR=/tmp \
HBASE_PID_DIR=/tmp \
$HOME/srv/hbase-1.7.2/bin/hbase \
org.apache.hadoop.hbase.util.CompressionTest somefile $ty
done

exit 0
