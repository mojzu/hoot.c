# hoot.c

## User Manual

### Start

External and third-party dependencies are managed using a [CMake](https://cmake.org/) script file.

The script file is [dependency.cmake](dependency.cmake).

To run the script.

```shell
(mkdir -p dependency && cd dependency && cmake -P ../dependency.cmake)
```

Static library and header build outputs are managed using a [CMake](https://cmake.org/) build system.

The build system file is [CMakeLists.txt](CMakeLists.txt).

Targets are the intended platform for the libraries to be used, for example the host system (Windows, macOS) or an embedded system (RP2040). The build type can be used to produce `debug` and `release` outputs.

Each target is defined in the [target](target) directory, and must contain a definitions file such as [target/host/target.cmake](target/host/target.cmake).

The target is passed to the build system with `HOOT_TARGET_NAME`, the build type with `CMAKE_BUILD_TYPE`. These are defined in presets in the [CMakePresets.json](CMakePresets.json) file.

To run the build system for a preset.

```shell
cmake --preset host-debug
(cd cmake/host-debug && make install)
```
