#!/bin/bash
#cleos wallet unlock -n default --password PW5K8Fo9Tsavuo4pBpLHJzjUQH49N8s5g4HxAmwHsvZsh9uWjgBD2
#cleos set contract eosio ~/eos-dawn-5-31/eos/build/contracts/eosio.bios -p eosio

cleos create account eosio eosio.token EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV

cleos set contract eosio.token ~/eos-master/eos/build/contracts/eosio.token -p eosio.token
cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token
cleos push action eosio.token issue '[ "eosio", "100000000.0000 EOS", "memo" ]' -p eosio

#cleos set contract eosio ~/eos-master/eos/build/contracts/eosio.system/ -p eosio

#cleos system newaccount --transfer eosio voter EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe --stake-net "100000000.0000 EOS" --stake-cpu "100000000.0000 EOS" --buy-ram "100 EOS" -p eosio
#cleos system newaccount --transfer eosio user EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe --stake-net "100.0000 EOS" --stake-cpu "100.0000 EOS" --buy-ram "100 EOS" -p eosio
#cleos system newaccount --transfer eosio tester EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe --stake-net "100.0000 EOS" --stake-cpu "100.0000 EOS" --buy-ram "100 EOS" -p eosio
cleos create account eosio user EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos create account eosio tester EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos push action eosio.token issue '[ "user", "100.0000 EOS", "memo" ]' -p eosio

#create producer1 account before regproducer
#cleos system newaccount --transfer eosio producer1 EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV --stake-net "100.0000 EOS" --stake-cpu "100.0000 EOS" --buy-ram "100 EOS" -p eosio
#cleos system regproducer producer1 EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV

#cleos system sellram user 1000000
#cleos system buyram user user  "10 EOS"
#cleos system  delegatebw user user "5 EOS" "5 EOS"
#cleos system  delegatebw user tester "0.1 EOS" "0.1 EOS"
#cleos get table eosio.token EOS stat
#cleos get table eosio.token user accounts
#cleos push action eosio.token transfer '[ "user", "tester", "25.0000 EOS", "m" ]' -p user
#cleos get actions user
