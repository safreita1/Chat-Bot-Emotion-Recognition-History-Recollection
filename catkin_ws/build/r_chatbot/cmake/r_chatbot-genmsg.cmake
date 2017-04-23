# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "r_chatbot: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/media/sf_GitHub/Perception_Robotics/catkin_ws/src/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(r_chatbot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/Context.srv" NAME_WE)
add_custom_target(_r_chatbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r_chatbot" "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/Context.srv" ""
)

get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/EmotionRecognize.srv" NAME_WE)
add_custom_target(_r_chatbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r_chatbot" "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/EmotionRecognize.srv" ""
)

get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/LoadHistory.srv" NAME_WE)
add_custom_target(_r_chatbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r_chatbot" "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/LoadHistory.srv" ""
)

get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceRecognize.srv" NAME_WE)
add_custom_target(_r_chatbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r_chatbot" "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceRecognize.srv" ""
)

get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/GetTopics.srv" NAME_WE)
add_custom_target(_r_chatbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r_chatbot" "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/GetTopics.srv" ""
)

get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceTrain.srv" NAME_WE)
add_custom_target(_r_chatbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r_chatbot" "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceTrain.srv" ""
)

get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/WriteHistory.srv" NAME_WE)
add_custom_target(_r_chatbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r_chatbot" "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/WriteHistory.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/Context.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
)
_generate_srv_cpp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/EmotionRecognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
)
_generate_srv_cpp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/LoadHistory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
)
_generate_srv_cpp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceRecognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
)
_generate_srv_cpp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/GetTopics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
)
_generate_srv_cpp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceTrain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
)
_generate_srv_cpp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/WriteHistory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
)

### Generating Module File
_generate_module_cpp(r_chatbot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(r_chatbot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(r_chatbot_generate_messages r_chatbot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/Context.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_cpp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/EmotionRecognize.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_cpp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/LoadHistory.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_cpp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceRecognize.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_cpp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/GetTopics.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_cpp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceTrain.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_cpp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/WriteHistory.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_cpp _r_chatbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r_chatbot_gencpp)
add_dependencies(r_chatbot_gencpp r_chatbot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r_chatbot_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/Context.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
)
_generate_srv_lisp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/EmotionRecognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
)
_generate_srv_lisp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/LoadHistory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
)
_generate_srv_lisp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceRecognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
)
_generate_srv_lisp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/GetTopics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
)
_generate_srv_lisp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceTrain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
)
_generate_srv_lisp(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/WriteHistory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
)

### Generating Module File
_generate_module_lisp(r_chatbot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(r_chatbot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(r_chatbot_generate_messages r_chatbot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/Context.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_lisp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/EmotionRecognize.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_lisp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/LoadHistory.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_lisp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceRecognize.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_lisp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/GetTopics.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_lisp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceTrain.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_lisp _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/WriteHistory.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_lisp _r_chatbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r_chatbot_genlisp)
add_dependencies(r_chatbot_genlisp r_chatbot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r_chatbot_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/Context.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
)
_generate_srv_py(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/EmotionRecognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
)
_generate_srv_py(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/LoadHistory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
)
_generate_srv_py(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceRecognize.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
)
_generate_srv_py(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/GetTopics.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
)
_generate_srv_py(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceTrain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
)
_generate_srv_py(r_chatbot
  "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/WriteHistory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
)

### Generating Module File
_generate_module_py(r_chatbot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(r_chatbot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(r_chatbot_generate_messages r_chatbot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/Context.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_py _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/EmotionRecognize.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_py _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/LoadHistory.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_py _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceRecognize.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_py _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/GetTopics.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_py _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/FaceTrain.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_py _r_chatbot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/media/sf_GitHub/Perception_Robotics/catkin_ws/src/r_chatbot/srv/WriteHistory.srv" NAME_WE)
add_dependencies(r_chatbot_generate_messages_py _r_chatbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r_chatbot_genpy)
add_dependencies(r_chatbot_genpy r_chatbot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r_chatbot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r_chatbot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(r_chatbot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r_chatbot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(r_chatbot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r_chatbot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(r_chatbot_generate_messages_py std_msgs_generate_messages_py)
endif()
