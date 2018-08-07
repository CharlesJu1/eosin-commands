#!/bin/bash
# nodeos --config-dir ./eosio-config --data-dir ./eosio-data --genesis-json ./eosio-config/genesis.json
cleos wallet unlock -n default --password PW5K8Fo9Tsavuo4pBpLHJzjUQH49N8s5g4HxAmwHsvZsh9uWjgBD2

#cleos system newaccount eosio user EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV --stake-net "100000000 EOS" --stake-cpu "100000000 EOS"  --buy-ram "100 EOS" --transfer
cleos system voteproducer prods user producer1 producer2
