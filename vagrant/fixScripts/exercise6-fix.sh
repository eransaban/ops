#!/bin/bash
if [ "$HOSTNAME" = server1 ]; then
        server='192.168.100.11'
else
        server="192.168.100.10"
fi

length=$(($#-1))
files=${@:1:$length}

scp $files root@$server:${@: -1}

sizes=()
for file in $files
do
        filesize=$(stat --format=%s $file)
        sizes+=($filesize)
done

declare -i sum
IFS=+ sum="${sizes[*]}"
echo $sum
