#!/bin/bash

#./add_gazebo-classic_x500.sh /path/to/PX4_Autopilot

# Add x500 folder in Tools/simulation/gazebo-classic/sitl_gazebo-classic/models/
cp -r x500 "$1/PX4-Autopilot/Tools/simulation/gazebo-classic/sitl_gazebo-classic/models/"

# Add x500.world in Tools/simulation/gazebo-classic/sitl_gazebo-classic/worlds/
cp x500.world "$1/PX4-Autopilot/Tools/simulation/gazebo-classic/sitl_gazebo-classic/worlds/"

# Add 1063_gazeo-classic_x500 in ROMFS/px4fmu_common/init.d-posix/airframes/
cp 1063_gazebo-classic_x500 "$1/PX4-Autopilot/ROMFS/px4fmu_common/init.d-posix/airframes/"

# Replace CMakeLists.txt in ROMFS/px4fmu_common/init.d-posix/airframes/
cp -f CMakeLists.txt "$1/PX4-Autopilot/ROMFS/px4fmu_common/init.d-posix/airframes/"

# Replace sitl_targets_gazebo-classic.cmake in src/modules/simulation/simulator_mavlink/
cp -f sitl_targets_gazebo-classic.cmake "$1/PX4-Autopilot/src/modules/simulation/simulator_mavlink/"

cd /$1/PX4-Autopilot

echo "Files added or replaced successfully."
echo "You can run :"
echo "make px4_sitl gazebo-classic_x500"

