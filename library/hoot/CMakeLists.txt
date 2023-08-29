cmake_minimum_required(VERSION 3.24)

project(hoot LANGUAGES C)
set_property(
    TARGET ${PROJECT}
    PROPERTY C_STANDARD 11
)

set(
    HEADERS
    ${HOOT_TARGET_INCLUDE}/hoot_configuration.h
    common.h
    target.h
)
set(
    SOURCES
    target.c
)

add_library(
    ${PROJECT_NAME} STATIC
    ${HEADERS}
    ${SOURCES}
)
target_include_directories(
    ${PROJECT_NAME} PRIVATE
    ${HOOT_TARGET_INCLUDE}
)
set_target_properties(
    ${PROJECT_NAME}
    PROPERTIES PUBLIC_HEADER "${HEADERS}"
)

install(
    TARGETS ${PROJECT_NAME}
    ARCHIVE DESTINATION ${HOOT_BUILD_ARCHIVE}
    PUBLIC_HEADER DESTINATION ${HOOT_BUILD_INCLUDE}/${PROJECT_NAME}
)
