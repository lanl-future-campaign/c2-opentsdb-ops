#!/bin/bash -xu

curdir=$(cd `dirname $0` && pwd)

cd `realpath $curdir` || exit 1

source common.sh

killall -9 java

sudo umount /tmp/hbase-tmp
rm -rf /tmp/hbase-*
rm -rf /tmp/Jetty_*

exit 0
