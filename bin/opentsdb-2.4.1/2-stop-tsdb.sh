#!/bin/bash -xu

for pid in `jps | grep TSD | cut -d' ' -f1`
do
	kill $pid
done

exit 0
