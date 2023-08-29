#ifndef INCLUDE_HOOT_TARGET_H
#define INCLUDE_HOOT_TARGET_H
#include <stdbool.h>
#include "common.h"

EXTERN_C_START

/// Value of HOOT_TARGET_NAME used by the build system.
extern const char* const TARGET_NAME;

/// Value of HOOT_BUILD_TYPE used by the build system.
extern const char* const BUILD_TYPE;

#if (DEBUG == 1)
/// Defined as true if DEBUG=1.
extern const bool IS_DEBUG;
#endif

#if (RELEASE == 1)
/// Defined as true if RELEASE=1.
extern const bool IS_RELEASE;
#endif

EXTERN_C_END

#endif
