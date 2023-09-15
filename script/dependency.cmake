include(FetchContent)
include(../script/host.cmake)

# https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
if(${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Linux")
    if(${CMAKE_HOST_SYSTEM_ARCH} STREQUAL "aarch64")
        message("[dependency] arm-gnu-toolchain (12.3.rel1-aarch64-arm-none-eabi)")
        FetchContent_Populate(
            arm-none-eabi
            QUIET
            URL        https://developer.arm.com/-/media/Files/downloads/gnu/12.3.rel1/binrel/arm-gnu-toolchain-12.3.rel1-aarch64-arm-none-eabi.tar.xz?rev=420215e7c8d14d90b5227eb5486d8c75&hash=315EF6A79273453E2306E2E9F52D80E1
            URL_HASH   SHA256=14c0487d5753f6071d24e568881f7c7e67f80dd83165dec5164b3731394af431
            SOURCE_DIR arm-none-eabi
        )
    endif()
elseif(${CMAKE_HOST_SYSTEM_NAME} STREQUAL "Darwin")
    if(${CMAKE_HOST_SYSTEM_ARCH} STREQUAL "arm64")
        message("[dependency] arm-gnu-toolchain (12.3.rel1-darwin-arm64-arm-none-eabi)")
        FetchContent_Populate(
            arm-none-eabi
            QUIET
            URL        https://developer.arm.com/-/media/Files/downloads/gnu/12.3.rel1/binrel/arm-gnu-toolchain-12.3.rel1-darwin-arm64-arm-none-eabi.tar.xz?rev=c22a1b092d0d401291232d21e24cf986&hash=CBB534DAF3233E46A9C0BAD1A3D68740
            URL_HASH   SHA256=3b2eee0bdf71c1bbeb3c3b7424fbf7bd9d5c3f0f5a3a4a78159c9e3ad219e7bd
            SOURCE_DIR arm-none-eabi
        )
    endif()
endif()
