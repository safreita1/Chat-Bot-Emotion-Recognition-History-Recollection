# Install script for directory: /media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/media/sf_GitHub/Perception_Robotics/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/msg" TYPE FILE FILES
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Bool.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Byte.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/ByteMultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Char.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/ColorRGBA.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Duration.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Empty.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Float32.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Float32MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Float64.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Float64MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Header.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Int16.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Int16MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Int32.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Int32MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Int64.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Int64MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Int8.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Int8MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/MultiArrayDimension.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/MultiArrayLayout.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/String.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/Time.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/UInt16.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/UInt16MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/UInt32.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/UInt32MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/UInt64.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/UInt64MultiArray.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/UInt8.msg"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg/UInt8MultiArray.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES "/media/sf_GitHub/Perception_Robotics/catkin_ws/build/std_msgs/catkin_generated/installspace/std_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/media/sf_GitHub/Perception_Robotics/catkin_ws/devel/include/std_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/media/sf_GitHub/Perception_Robotics/catkin_ws/devel/share/common-lisp/ros/std_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/media/sf_GitHub/Perception_Robotics/catkin_ws/devel/lib/python2.7/dist-packages/std_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/media/sf_GitHub/Perception_Robotics/catkin_ws/devel/lib/python2.7/dist-packages/std_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/sf_GitHub/Perception_Robotics/catkin_ws/build/std_msgs/catkin_generated/installspace/std_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES "/media/sf_GitHub/Perception_Robotics/catkin_ws/build/std_msgs/catkin_generated/installspace/std_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/build/std_msgs/catkin_generated/installspace/std_msgsConfig.cmake"
    "/media/sf_GitHub/Perception_Robotics/catkin_ws/build/std_msgs/catkin_generated/installspace/std_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs" TYPE FILE FILES "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/std_msgs" TYPE DIRECTORY FILES "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/include/std_msgs/" REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

