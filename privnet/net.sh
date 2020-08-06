#!/bin/bash


function createAcc(){
  geth --datadir ./store account new
}

function init(){
  geth --datadir ./store init genesis.json
}

function start(){
  geth \
    --nodiscover \
    --networkid 222 \
    --datadir ./store \
    --mine \
    --rpc \
    --wsapi eth,net,rpc,web3,shh \
    --ws \
    --wsorigins="*" \
    --shh
}

if [ ! -d "./store" ]; then
  createAcc
  init
fi

start