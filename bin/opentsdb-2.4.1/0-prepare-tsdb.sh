#!/bin/bash -xu

sudo umount /tmp/opentsdb-tmp
rm -rf /tmp/opentsdb*

mkdir /tmp/opentsdb-tmp
sudo mount -t tmpfs -o size=2g tmpfs /tmp/opentsdb-tmp

exit 0
