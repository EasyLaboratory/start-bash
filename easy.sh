#!/bin/bash

# 在同一个终端中打开三个标签页，并分别执行指令

# 运行游戏
gnome-terminal --tab --title="GAME" -- bash -c "cd /home/ubuntu/3software/city_real/LinuxNoEditor; bash learn.sh; exec bash"

# 等待3秒
sleep 5

# 运行perception
gnome-terminal --tab --title="perception" -- bash -c "cd /home/ubuntu/1code/easyTrack; source ./devel/setup.bash; roslaunch perception perception.launch; exec bash"
sleep 4


#运行control模块
 gnome-terminal --tab --title="CONTROL" -- bash -c "cd /home/ubuntu/1code/easyTrack; source ./devel/setup.bash; roslaunch se3controller se3controller.launch; exec bash"
 sleep 2

# 运行planning模块
 gnome-terminal --tab --title="AIRSIM" -- bash -c "cd /home/ubuntu/1code/easyTrack; bash airsim_planning.sh; exec bash"
