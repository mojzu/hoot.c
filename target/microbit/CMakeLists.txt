# This file can contain target specific CMake or library configuration
add_compile_options(
    -std=c99 -mcpu=cortex-m4 -mthumb -mabi=aapcs -mtune=cortex-m4
    -Wall -Werror
    -mfloat-abi=hard -mfpu=fpv4-sp-d16
    -mno-unaligned-access
    -ffunction-sections -fdata-sections -fno-strict-aliasing
    -fno-builtin -fshort-enums
    -Os -g3 -flto
)

# Add libraries as subdirectories for compilation
add_subdirectory(${HOOT_LIBRARY}/hoot ${CMAKE_CURRENT_BINARY_DIR}/hoot)
