#!/bin/bash
CONFIG_FILE="/minning/demon/demon.conf"

function start_miner() {
    /minning/t-rex_demon/t-rex $MINER_OPTIONS >> $PID_FIL &
    echo $! > $PID_FILE
}

function stop_miner() {
    if [ -e $PID_FILE ]; then
        kill -TERM $(cat $PID_FILE)
        rm $PID_FILE
    fi
}

trap "stop_miner" EXIT

if [ -e $CONFIG_FILE ]; then
    source $CONFIG_FILE
    start_miner
else
    echo " $CONFIG_FILE not found "
    exit 1
fi

# Bloquer le script, permet au démon de rester actif
while true; do
    sleep 1
done
