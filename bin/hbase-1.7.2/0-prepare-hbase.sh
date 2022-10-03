#!/bin/bash -xu

killall -9 java

sudo umount /tmp/hbase-tmp
rm -rf /tmp/hbase-*
rm -rf /tmp/Jetty_*

mkdir /tmp/hbase-tmp
sudo mount -t tmpfs -o size=8g tmpfs /tmp/hbase-tmp

exit 0
