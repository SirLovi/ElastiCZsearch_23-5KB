#!/bin/bash

echo "Starting Elasticsearch, Kibana and Cerebro..."

# start elasticsearch
{ elasticsearch-6.2.3/bin/elasticsearch.bat & } >LOGFILE_ES 2>LOGFILE_ESE

# start kibana
{ kibana-6.2.3-windows-x86_64/bin/kibana.bat & } >LOGFILE_K 2>LOGFILE_KE

# start cerebro
{ cerebro-0.7.2/bin/cerebro.bat & } >LOGFILE_C 2>LOGFILE_CE

read -p "Press ENTER to exit..." ENTER
kill $(jobs -p)
