#!/bin/bash
set -e

dir="$HOME"
[ "$1" != "" ] && dir="$1"

# ROS 2
source /opt/ros/humble/setup.bash
cd "$dir/ros2_ws"

# build
colcon build --symlink-install

# overlay
source "$dir/ros2_ws/install/local_setup.bash"

# 実行（画面＆ログ両方に出す）
timeout 15 ros2 launch mypkg talk_listen.launch.py | tee /tmp/mypkg.log

# 判定（少しゆるく）
grep 'Listen' /tmp/mypkg.log

