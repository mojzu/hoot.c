# hoot.c

## Manual

### Start

External and third-party dependencies are managed using a [CMake](https://cmake.org/) script file.

The script file is [script/dependency.cmake](script/dependency.cmake).

To run the script.

```shell
(mkdir -p dependency && cd dependency && cmake -P ../script/dependency.cmake)
```

Static library and header build outputs are managed using a [CMake](https://cmake.org/) build system.

The build system file is [CMakeLists.txt](CMakeLists.txt).

Targets are the intended platform for the libraries to be used, for example the host system (Linux, macOS) or an embedded system (micro:bit). The build type can be used to produce `debug` and `release` outputs.

Each target is defined in the [target](target) directory, and must contain a CMake file such as [target/host/CMakeLists.txt](target/host/CMakeLists.txt).

The target is passed to the build system with `HOOT_TARGET_NAME`, the build type with `CMAKE_BUILD_TYPE`. These are defined in presets in the [CMakePresets.json](CMakePresets.json) file.

To run the build system for a preset.

```shell
cmake --preset host-debug
(cd cmake/host-debug && make install VERBOSE=1)
```

Tasks for each preset can be found in [.vscode/tasks.json](.vscode/tasks.json), all presets can be run using the `configure` and `build` tasks.

Library headers and static archive build system outputs are placed in the [build](build) directory.

Libraries are added to the build system as subdirectories in the target CMake file. The target directory may contain target specific library headers for configuration such as [target/host/hoot_configuration.h](target/host/hoot_configuration.h).

Each library directory contains a CMake file such as [library/hoot/CMakeLists.txt](library/hoot/CMakeLists.txt). This file may use variables defined in the CMake build system or the targets CMake file.

Examples for targets can be found in the [example](example) directory. Each target has its own CMake file and presets such as [example/host/CMakeLists.txt](example/host/CMakeLists.txt) and [example/host/CMakePresets.json](example/host/CMakePresets.json).

To run the build system for an example.

```shell
(cd example/host && cmake --preset host-debug)
(cd cmake/host-debug-example && make install VERBOSE=1)
```

Tasks for each example preset can be found in [.vscode/tasks.json](.vscode/tasks.json), all example presets can be run using the `example.configure` and `example.build` tasks.

### Targets

#### host

Compiles for the host system (Linux, macOS) target.
