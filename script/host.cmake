# Get/set system name and architecture variables
message("[host] CMAKE_HOST_SYSTEM_NAME = ${CMAKE_HOST_SYSTEM_NAME}")

if(${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Linux" OR ${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Darwin")
execute_process(
    COMMAND uname -m
    COMMAND tr -d '\n'
    OUTPUT_VARIABLE CMAKE_HOST_SYSTEM_ARCH
)
endif()
message("[host] CMAKE_HOST_SYSTEM_ARCH = ${CMAKE_HOST_SYSTEM_ARCH}")
