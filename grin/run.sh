#!/bin/bash

# /server can be a mounted or shared filesystem
cp /usr/src/grin/grin.toml /server/grin.toml
cd /server

sed -i 's/^archive_mode = .*$/archive_mode = true/' grin.toml
sed -i 's/^run_tui = .*$/run_tui = false/' grin.toml
sed -i 's/^api_http_addr = .*$/api_http_addr = "0.0.0.0:13413"/' grin.toml
sed -i 's/^stratum_server_addr = .*$/stratum_server_addr = "0.0.0.0:13416"/' grin.toml
sed -i 's/^api_listen_interface = .*$/api_listen_interface = "0.0.0.0"/' grin.toml
sed -i 's/^attempt_time_per_block = .*$/attempt_time_per_block = 18/' grin.toml
sed -i 's/^check_node_api_http_addr = .*$/check_node_api_http_addr = http://grin:13413/' grin.toml

grin
