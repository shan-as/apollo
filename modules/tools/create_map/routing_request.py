#!/usr/bin/env python

###############################################################################
# Copyright 2017 The Apollo Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################
"""
Generate Planning Path
"""

import argparse
import atexit
import os
import sys
import time

import rospy
import scipy.signal as signal
from numpy import genfromtxt

from modules.routing.proto import routing_pb2

def main():
    """
    Main rosnode
    """
    rospy.init_node('qnx_routing_requester', anonymous=True)
    sequence_num = 0

    routing_request = routing_pb2.RoutingRequest()
    routing_request.header.timestamp_sec = rospy.get_time()
    routing_request.header.module_name = 'routing_request'
    routing_request.header.sequence_num = sequence_num
    sequence_num = sequence_num + 1

    # For modules/map/data/farrar/base_map.txt
    start_wp = routing_request.waypoint.add()

    start_wp.id = 'lane_0_0'
    start_wp.s = 0.0
    start_wp.pose.x = 289922.142159
    start_wp.pose.y = 4498627.69291

    end_wp = routing_request.waypoint.add()
    end_wp.id = 'lane_1_0'
    end_wp.s = 57.3953496566
    end_wp.pose.x = 289963.640391
    end_wp.pose.y = 4498692.48672


    print "routing_request: {}".format(routing_request)

    request_publisher = rospy.Publisher(
            '/apollo/routing_request', routing_pb2.RoutingRequest, queue_size=1)
    time.sleep(2.0)
    request_publisher.publish(routing_request)


if __name__ == '__main__':
    main()
