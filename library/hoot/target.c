#include "target.h"

#ifdef HOOT_TARGET_NAME
const char* const TARGET_NAME = HOOT_TARGET_NAME;
#else
#error "HOOT_TARGET_NAME must be defined"
#endif
