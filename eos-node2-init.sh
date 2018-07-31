#nodeos --config-dir ./eosio-config --data-dir ./eosio-data
#nodeos --config-dir ./eosio-config --data-dir ./eosio-data --genesis-json ./eosio-config/genesis.json
#nodeos --config-dir ./eosio-config --data-dir ./eosio-data --extract-genesis-json arg
cleos -u http://127.0.0.1:28888 system newaccount eosio producer2 EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV --stake-net "100000000 EOS" --stake-cpu "100000000 EOS"  --buy-ram "100 EOS" --transfer
cleos -u http://127.0.0.1:28888 system regproducer producer2 EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV

