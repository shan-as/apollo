#!/bin/bash

# Map Name:
export MAP=test_map

cp /tmp/lane.csv .
mkdir -p /apollo/modules/map/data/${MAP}
python creat_map.py -i lane.csv -o /apollo/modules/map/data/${MAP}/base_map.txt -e /apollo/modules/map/data/${MAP}/default_end_way_point.txt --debug
python convert_map_txt2bin.py -i /apollo/modules/map/data/${MAP}/base_map.txt -o /apollo/modules/map/data/${MAP}/base_map.bin
cp /apollo/modules/map/data/${MAP}/base_map.txt /apollo/modules/map/data/${MAP}/sim_map.txt
mv lane.csv /apollo/modules/map/data/${MAP}/

echo -e '\n--map_dir=/apollo/modules/map/data/'${MAP} >> /apollo/modules/common/data/global_flagfile.txt
