include(FetchContent)

if(${CMAKE_HOST_SYSTEM_NAME} MATCHES "Windows")
message("[dependency] ArmGNUToolchain (Windows-mingw-w64-i686)")
FetchContent_Populate(
    ArmGNUToolchain
    QUIET
    URL               https://developer.arm.com/-/media/Files/downloads/gnu/12.2.mpacbti-rel1/binrel/arm-gnu-toolchain-12.2.mpacbti-rel1-mingw-w64-i686-arm-none-eabi.zip?rev=3a67072e4b984fb2911b4953c0fa6f53&hash=C31142303DB3653019CACC5C509CACCF
    URL_HASH          SHA256=9f5f5492447212001aa8b708e237cdfecb1296ba0f1c699e2aa2fd87249e5b00
    SOURCE_DIR        ArmGNUToolchain
)
elseif(${CMAKE_HOST_SYSTEM_NAME} MATCHES "Darwin")
execute_process(
    COMMAND uname -m
    COMMAND tr -d '\n'
    OUTPUT_VARIABLE ARCHITECTURE
)
if(${ARCHITECTURE} MATCHES "arm64")
message("[dependency] ArmGNUToolchain (Darwin-arm64)")
FetchContent_Populate(
    ArmGNUToolchain
    QUIET
    URL               https://developer.arm.com/-/media/Files/downloads/gnu/12.2.mpacbti-rel1/binrel/arm-gnu-toolchain-12.2.mpacbti-rel1-darwin-arm64-arm-none-eabi.tar.xz?rev=72354d4494f24dbd98637aae30950c8e&hash=F933851EE46A2EBA65B11C5001DFB554
    URL_HASH          SHA256=0569c8379e3335a8de104ef0d19f0b79c8644c571a9aa005049f0300664a68a1
    SOURCE_DIR        ArmGNUToolchain
)
endif(${ARCHITECTURE} MATCHES "arm64")
endif(${CMAKE_HOST_SYSTEM_NAME} MATCHES "Windows")
