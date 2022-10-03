#!/bin/bash -xu

killall -9 java

sudo umount /tmp/hbase-tmp
rm -rf /tmp/hbase-*
rm -rf /tmp/Jetty_*

exit 0
