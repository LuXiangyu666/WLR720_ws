# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "angles;nodelet;pcl_ros;roscpp;sensor_msgs;tf;vanjee_driver;vanjee_msgs;dynamic_reconfigure;pcl_conversions".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lvanjee_lidar".split(';') if "-lvanjee_lidar" != "" else []
PROJECT_NAME = "vanjee_lidar"
PROJECT_SPACE_DIR = "/home/dt/project/WLR720_ws/install"
PROJECT_VERSION = "1.2.0"
