## Kill process faster

edit the file
/opt/ros/kinetic/lib/python2.7/dist-packages/roslaunch/nodeprocess.py

_TIMEOUT_SIGINT  = 0.5 #seconds
_TIMEOUT_SIGTERM = 0.5 #seconds
