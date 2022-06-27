#!/bin/bash
if  [ "$1" == "" ]
then
      echo "Manual : $0 REDE | EXP : 191.168.0"
else
for host in {1..254};
      do
      ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed's/.$//';
      echo "Conexao realizada" 
done
fi

