#!/bin/bash
# nodeos --config-dir ./eosio-config --data-dir ./eosio-data --genesis-json ./eosio-config/genesis.json
cleos wallet unlock -n default --password PW5K8Fo9Tsavuo4pBpLHJzjUQH49N8s5g4HxAmwHsvZsh9uWjgBD2

cleos create account eosio eosio.bpay EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.msig EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.names EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.ram EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.ramfee EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.saving EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.stake EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.token EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
cleos create account eosio eosio.vpay EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV

#cleos set contract eosio ~/eos-dawn-5-31/eos/build/contracts/eosio.bios -p eosio
#cleos set contract eosio.msig ~/eos-dawn-5-31/eos/build/contracts/eosio.msig -p eosio.msig
cleos set contract eosio.token ~/eos-master/eos/build/contracts/eosio.token -p eosio.token

cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token
cleos push action eosio.token issue '[ "eosio", "1000000000.0000 EOS", "memo" ]' -p eosio

cleos set contract eosio ~/eos-master/eos/build/contracts/eosio.system -p eosio

cleos system newaccount eosio user EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV --stake-net "100000000 EOS" --stake-cpu "100000000 EOS"  --buy-ram "100 EOS" --transfer
cleos system newaccount eosio tester EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV --stake-net "10 EOS" --stake-cpu "10 EOS"  --buy-ram "10 EOS" --transfer

#cleos create account eosio user EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
#cleos create account eosio tester EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
#cleos push action eosio.token issue '[ "user", "100.0000 EOS", "memo" ]' -p eosio
#cleos transfer eosio user "5000 EOS"  -p eosio

###########omes.user contract ########
#cleos system newaccount --transfer eosio producer1 EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV --stake-net "100.0000 EOS" --stake-cpu "100.0000 EOS" --buy-ram "100 EOS" -p eosio
#cleos set contract omes.user ~/easypay-coding-net/omes.user -p omes.user
