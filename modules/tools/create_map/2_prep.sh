#!/bin/bash
cd /apollo
export MAP=test_map
mkdir -p modules/map/data/${MAP}
python steven/creat_map.py -i /tmp/lane.csv -o modules/map/data/${MAP}/base_map.txt -e modules/map/data/${MAP}/default_end_way_point.txt --debug
python modules/tools/create_map/convert_map_txt2bin.py -i modules/map/data/${MAP}/base_map.txt -o modules/map/data/${MAP}/base_map.bin
