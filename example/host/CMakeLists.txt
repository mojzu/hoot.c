cmake_minimum_required(VERSION 3.24)

project(hoot.c.example.host)

include(../../script/build_type.cmake)
set(HOOT_BUILD_ARCHIVE ${CMAKE_SOURCE_DIR}/../../build/${HOOT_TARGET_NAME}/${HOOT_BUILD_TYPE} CACHE INTERNAL "")
set(HOOT_BUILD_INCLUDE ${HOOT_BUILD_ARCHIVE}/include CACHE INTERNAL "")
set(HOOT_BUILD_EXAMPLE ${HOOT_BUILD_ARCHIVE}/example CACHE INTERNAL "")

add_executable(hello-world hello_world.cpp)
target_include_directories(hello-world PRIVATE ${HOOT_BUILD_INCLUDE})
target_link_libraries(hello-world ${HOOT_BUILD_ARCHIVE}/libhoot.a)
install(TARGETS hello-world RUNTIME DESTINATION ${HOOT_BUILD_EXAMPLE})
