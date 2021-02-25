#!/bin/bash

for uidgid in $(cut -d: -f3,4 passwd.bak); do
    dir=$(awk -F: /$uidgid/{print\$6} passwd.bak)
    mkdir -vm700 "$dir"; cp -r /etc/skel/.[[:alpha:]]* "$dir"
    chown -R $uidgid "$dir"; ls -ld "$dir"
done
