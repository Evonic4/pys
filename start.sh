#!/bin/bash

f1=/usr/share/pys/


cd $f1
ls | sed -n '/.sh/p' | sed 's/start.sh//g' | sed '/^$/d' > $f1"fs"

for x in `cat $f1"fs"|grep -v \#`
do
chmod +rx $x
perl -pi -e "s/\r\n/\n/" $x
echo $x
done


ls | sed -n '/.php/p' | sed '/^$/d' > $f1"fs"

for x in `cat $f1"fs"|grep -v \#`
do
chmod +rx $x
perl -pi -e "s/\r\n/\n/" $x
echo $x
done

ls | sed -n '/.py/p' | sed '/^$/d' > $f1"fs"

for x in `cat $f1"fs"|grep -v \#`
do
chmod +rx $x
perl -pi -e "s/\r\n/\n/" $x
echo $x
done

/usr/share/pys/start.py $1 $2 $3 $4 2>&1 &
