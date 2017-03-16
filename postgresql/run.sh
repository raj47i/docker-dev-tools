#!/bin/sh
clear
L="===================================================================="

if [ "$1" == "help" ] || [ "$1" == "" ]; then
  printf "$L\n * Program Version Details\n$L\n"
  echo "   PostgreSQL Server        :> $(postgres -V)"
  echo "   PostgreSQL Client (psql) :> $(psql -V)"
  echo "   PHPPgAdmin               :> --NA--"
  printf "$L\n * Docker Volume for Data\n$L\n"
  echo "   /postgres-data"
  exit 0
fi

if [ "$1" == "init" ] ; then
    printf "$L\n * Initializing PostgreSQL\n$L\n"
    mkdir /data/pg-data
    chown -Rf postgres:postgres /data/pg-data
    su - postgres -c 'initdb -D /data/pg-data'
    exit 0
fi

if [ "$1" == "start" ] ; then
    printf "$L\n * Starting PostgreSQL\n$L\n"
    su - postgres -c 'postgres -D /data/pg-data'
    exit 0
fi

if [ "$1" == "sh" ] ; then
    /bin/sh
    exit 0
fi
