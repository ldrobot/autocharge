# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "actionlib_autocharge: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iactionlib_autocharge:/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(actionlib_autocharge_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg" NAME_WE)
add_custom_target(_actionlib_autocharge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actionlib_autocharge" "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:actionlib_autocharge/autochargeResult:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg" NAME_WE)
add_custom_target(_actionlib_autocharge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actionlib_autocharge" "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg" NAME_WE)
add_custom_target(_actionlib_autocharge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actionlib_autocharge" "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg" NAME_WE)
add_custom_target(_actionlib_autocharge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actionlib_autocharge" "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_autocharge/autochargeFeedback:actionlib_msgs/GoalStatus:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg" NAME_WE)
add_custom_target(_actionlib_autocharge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actionlib_autocharge" "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg" "actionlib_msgs/GoalID:actionlib_autocharge/autochargeGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg" NAME_WE)
add_custom_target(_actionlib_autocharge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actionlib_autocharge" "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg" "actionlib_msgs/GoalID:actionlib_autocharge/autochargeGoal:actionlib_msgs/GoalStatus:actionlib_autocharge/autochargeActionResult:actionlib_autocharge/autochargeActionGoal:geometry_msgs/Pose:actionlib_autocharge/autochargeFeedback:actionlib_autocharge/autochargeActionFeedback:geometry_msgs/Quaternion:std_msgs/Header:actionlib_autocharge/autochargeResult:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg" NAME_WE)
add_custom_target(_actionlib_autocharge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "actionlib_autocharge" "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_cpp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_cpp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_cpp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_cpp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_cpp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_cpp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
)

### Generating Services

### Generating Module File
_generate_module_cpp(actionlib_autocharge
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(actionlib_autocharge_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(actionlib_autocharge_generate_messages actionlib_autocharge_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_cpp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_cpp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_cpp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_cpp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_cpp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_cpp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_cpp _actionlib_autocharge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actionlib_autocharge_gencpp)
add_dependencies(actionlib_autocharge_gencpp actionlib_autocharge_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actionlib_autocharge_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_eus(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_eus(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_eus(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_eus(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_eus(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_eus(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
)

### Generating Services

### Generating Module File
_generate_module_eus(actionlib_autocharge
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(actionlib_autocharge_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(actionlib_autocharge_generate_messages actionlib_autocharge_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_eus _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_eus _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_eus _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_eus _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_eus _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_eus _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_eus _actionlib_autocharge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actionlib_autocharge_geneus)
add_dependencies(actionlib_autocharge_geneus actionlib_autocharge_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actionlib_autocharge_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_lisp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_lisp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_lisp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_lisp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_lisp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_lisp(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
)

### Generating Services

### Generating Module File
_generate_module_lisp(actionlib_autocharge
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(actionlib_autocharge_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(actionlib_autocharge_generate_messages actionlib_autocharge_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_lisp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_lisp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_lisp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_lisp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_lisp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_lisp _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_lisp _actionlib_autocharge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actionlib_autocharge_genlisp)
add_dependencies(actionlib_autocharge_genlisp actionlib_autocharge_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actionlib_autocharge_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_nodejs(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_nodejs(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_nodejs(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_nodejs(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_nodejs(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_nodejs(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
)

### Generating Services

### Generating Module File
_generate_module_nodejs(actionlib_autocharge
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(actionlib_autocharge_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(actionlib_autocharge_generate_messages actionlib_autocharge_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_nodejs _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_nodejs _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_nodejs _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_nodejs _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_nodejs _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_nodejs _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_nodejs _actionlib_autocharge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actionlib_autocharge_gennodejs)
add_dependencies(actionlib_autocharge_gennodejs actionlib_autocharge_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actionlib_autocharge_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_py(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_py(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_py(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_py(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_py(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
)
_generate_msg_py(actionlib_autocharge
  "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
)

### Generating Services

### Generating Module File
_generate_module_py(actionlib_autocharge
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(actionlib_autocharge_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(actionlib_autocharge_generate_messages actionlib_autocharge_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_py _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeResult.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_py _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_py _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionFeedback.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_py _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeActionGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_py _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeAction.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_py _actionlib_autocharge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg/autochargeGoal.msg" NAME_WE)
add_dependencies(actionlib_autocharge_generate_messages_py _actionlib_autocharge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(actionlib_autocharge_genpy)
add_dependencies(actionlib_autocharge_genpy actionlib_autocharge_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS actionlib_autocharge_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/actionlib_autocharge
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(actionlib_autocharge_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(actionlib_autocharge_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(actionlib_autocharge_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/actionlib_autocharge
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(actionlib_autocharge_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(actionlib_autocharge_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(actionlib_autocharge_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/actionlib_autocharge
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(actionlib_autocharge_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(actionlib_autocharge_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(actionlib_autocharge_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/actionlib_autocharge
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(actionlib_autocharge_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(actionlib_autocharge_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(actionlib_autocharge_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/actionlib_autocharge
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(actionlib_autocharge_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(actionlib_autocharge_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(actionlib_autocharge_generate_messages_py geometry_msgs_generate_messages_py)
endif()
