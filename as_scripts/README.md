# Map Creation Tool

## Steps:

1. Record bag of the course
```bash
bash 1_record_waypoints.sh
```

2. Extract lane data
```bash
rosbag play {}.bag
python lane_recorder.py
```

3. Create map
Rename MAP={map_name} and run:
```bash
bash 2_create_map.sh
```

4. Generate routing topo graph
```bash
bash /apollo/scripts/generate_routing_topo_graph.sh
```

5. Modify Routing Script
open routing_request.py and modify the following fields:

start_wp.id = 'lane_0_0'
start_wp.s = 0.0
start_wp.pose.x = 289922.142159
start_wp.pose.y = 4498627.69291
(Values from base_map.txt)

end_wp = routing_request.waypoint.add()
end_wp.id = 'lane_1_0'
end_wp.s = 57.3953496566
end_wp.pose.x = 289963.640391
end_wp.pose.y = 4498692.48672
(Values from default_end_way_point.txt)

6. Execute routing request
```bash
python routing_request.py
```
