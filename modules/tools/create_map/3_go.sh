control --flagfile=/apollo/modules/control/conf/control.conf --log_dir=/apollo/data/log --minloglevel=2
routing --flagfile=/apollo/modules/routing/conf/routing.conf
monitor --flagfile=/apollo/modules/monitor/conf/monitor.conf --minloglevel=3
planning --flagfile=/apollo/modules/planning/conf/planning.conf --log_dir=/apollo/data/log --noenable_prediction --noenable_traffic_light --noenable_record_debug
/apollo/bazel-bin/modules/dreamview/dreamview --flagfile=/apollo/modules/dreamview/conf/dreamview.conf --log_dir=/apollo/data/log
