#!/bin/bash
 if [ "$1" == "" ];
  then
    echo "Insira o servico a ser iniciado"
else
    service $1 start
    echo $1 "iniciado "
    echo  " [SERVICOS ATIVOS] "
    ps aux | grep $1 
    netstat -nat
fi
echo " [Fim do programa] "

