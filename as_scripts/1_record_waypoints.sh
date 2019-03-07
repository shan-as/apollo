rosbag record --split --duration=1m -b 2048  \
        /apollo/sensor/gnss/best_pose \
        /apollo/sensor/gnss/corrected_imu \
        /apollo/sensor/gnss/gnss_status \
        /apollo/sensor/gnss/imu \
        /apollo/sensor/gnss/raw_data \
        /apollo/sensor/gnss/ins_stat \
        /apollo/sensor/gnss/odometry \
        /apollo/sensor/gnss/rtk_eph \
        /apollo/sensor/gnss/rtk_obs \
        /apollo/canbus/chassis \
        /apollo/canbus/chassis_detail \
        /apollo/control \
        /apollo/control/pad \
        /apollo/planning \
        /apollo/prediction \
        /apollo/routing_request \
        /apollo/routing_response \
        /apollo/localization/pose \
        /apollo/drive_event \
        /tf \
        /tf_static \
        /apollo/monitor \
        /apollo/monitor/static_info
