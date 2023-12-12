#!/bin/bash

CONFIG_FILE="/minning/demon/demon.conf"
PID_FILE="/var/run/t-rex.pid"

function start_miner() {
    /minning/t-rex_demon/t-rex $MINER_OPTIONS >> /log_miner/t-rex/cfx/log.txt &
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
    echo "Fichier de configuration $CONFIG_FILE non trouvé."
    exit 1
fi

# Bloquer le script, permet au démon de rester actif
while true; do
    sleep 1
done
