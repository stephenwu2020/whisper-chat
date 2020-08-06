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
    --rpcapi eth,net,web3 
}

start