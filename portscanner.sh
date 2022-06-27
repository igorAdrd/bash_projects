#!/bin/bash
if [ "$1" == "" ];
then
     echo "Manual : $0 endereco ip (exp: 132.212.2.2)"
else
for ip in {1..254};
do 
hping3 -s -p  80 -c 1 $1.$ip 2> /dev/null | grep "flags=SA";
done
fi
