#!/bin/sh

for i in windowck wckbuttons; do
    process=$(ps -ef | grep ${i} | grep -v grep | awk '{ print $2}')

    if [ ! -z "${process}" ]; then
        kill ${process}
    fi
done
