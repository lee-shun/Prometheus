#!/bin/bash
# 脚本名称: compile_control.sh
# 脚本描述: 编译Prometheus控制模块

# 编译基础模块
catkin_make --source Modules/common --build build/common
# 编译Gazebo仿真模块
catkin_make --source Simulator/gazebo_simulator --build build/prometheus_gazebo
catkin_make --source Simulator/realsense_gazebo_plugin --build build/realsense_gazebo_plugin
catkin_make --source Simulator/velodyne_gazebo_plugins --build build/velodyne_gazebo_plugins
# 编译控制模块
catkin_make --source Modules/uav_control --build build/uav_control
# 编译demo模块
catkin_make --source Modules/tutorial_demo --build build/tutorial_demo
