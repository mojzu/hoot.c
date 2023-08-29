#include "target.h"

#ifdef HOOT_TARGET_NAME
const char* const TARGET_NAME = HOOT_TARGET_NAME;
#else
#error "HOOT_TARGET_NAME must be defined"
#endif

#ifdef HOOT_BUILD_TYPE
const char* const BUILD_TYPE = HOOT_BUILD_TYPE;
#else
#error "HOOT_BUILD_TYPE must be defined"
#endif

#if (DEBUG == 1)
const bool IS_DEBUG = true;
#endif

#if (RELEASE == 1)
const bool IS_RELEASE = true;
#endif
