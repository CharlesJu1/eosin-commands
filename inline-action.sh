#!/bin/bash
cleos wallet unlock -n default --password PW5K8Fo9Tsavuo4pBpLHJzjUQH49N8s5g4HxAmwHsvZsh9uWjgBD2

cleos create account eosio eosio.token EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos set contract eosio.token ~/eos-master/eos/build/contracts/eosio.token -p eosio.token

#cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token
#cleos push action eosio.token issue '[ "user", "100.0000 EOS", "memo" ]' -p eosio

cleos create account eosio omes.token EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
#use eosio.token contract to create OMES. omes.token is the issuer.
cleos push action eosio.token create '[ "omes.token", "1000000.0000 OMES", 0, 0, 0]' -p eosio.token

cleos create account eosio user EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos push action eosio.token issue '[ "user", "100.0000 OMES", "memo" ]' -p omes.token

cleos create account eosio omes.user EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
#to let omes.user issue OMES on behalf of omes.token
#cleos set account permission omes.token airdrop  '{"threshold":1, "accounts":[{"permission": {"actor":"omes.user", "permission":"active"}, "weight": 1}]}' -p omes.token
#cleos set action permission omes.token eosio.token issue airdrop
#cleos set action permission omes.token eosio.token issue NULL
#cleos push action eosio.token issue '[ "user", "100.0000 OMES", "memo" ]' -p omes.token@airdrop

#cleos get table eosio.token OMES stat
cleos get table eosio.token user accounts

cleos set contract omes.user ~/omes-contract/omes.user -p omes.user
cleos create account eosio user1 EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos set account permission omes.token airdrop  '{"threshold":1, "accounts":[{"permission": {"actor":"omes.user", "permission":"eosio.code"}, "weight": 1}]}' -p omes.token
cleos set action permission omes.token eosio.token issue airdrop
#cleos push action omes.user reguser '["user1"]' -p user@active
#cleos push action omes.user signin '["user1"]' -p user@active

##### omes.order contract #############
cleos create account eosio omes.order EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos set contract omes.order ~/omes-contract/omes.order -p omes.order

#cleos push action omes.order create '["user1", "111", "200 EOS", "hhaha"]' -p omes.order
#cleos push action omes.order create '["user1", "111", [{"sku": 1, "sub_total": "20 EOS"}], "200 EOS", "hhaha"]' -p omes.order
#cleos push action omes.order create '["user1", "123", [{"sku": 1, "sub_total": "20.123 EOS"}, {"sku": 2, "sub_total": "30.3456 CNY"}], "200.666688 CNY", "hhaha"]' -p omes.order
#cleos get table omes.order user1 orders

##### delayed trx ############
cleos push action omes.order delay '["user1", "hi user1"]' -p omes.order
cleos get table omes.order omes.order greeting
