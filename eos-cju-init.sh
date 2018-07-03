#!/bin/bash
#cleos wallet unlock -n default --password PW5Kj5tMR1RuGMPakdSiCmWwn6P9jztQNX8p3FqHTqtvzoX6KosSj
cleos set contract eosio ~/eos-cju/eos/build/contracts/eosio.bios -p eosio
cleos create account eosio user EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos create account eosio user1 EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos create account eosio tester EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos create account eosio eosio.token EOS73D1s3ie2M8WdSDefQp4ZCYX99sda9wmkVvJ3GBLUbNyBeXnTe EOS5pJ1hEb6YhNVwE6EsJWYk88fYwYnEzYGEMwbwsZeGZx1XvT1u6
cleos set contract eosio.token ~/eos-cju/eos/build/contracts/eosio.token -p eosio.token
cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token
cleos push action eosio.token issue '[ "user", "100.0000 EOS", "memo" ]' -p eosio
#cleos get table eosio.token EOS stat
#cleos get table eosio.token user accounts
#cleos push action eosio.token transfer '[ "user", "tester", "25.0000 EOS", "m" ]' -p user
#cleos push action eosio.token issue '[ "user1", "100.0000 EOS", "memo" ]' -p eosio
#cleos push action eosio.token transfer '[ "user1", "tester", "25.0000 EOS", "m" ]' -p user1
#cleos get actions user
