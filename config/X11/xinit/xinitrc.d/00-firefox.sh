#!/bin/sh

#
# Firefox startup
#

# As of Firefox 98, VA-API is blocked by RDD sandbox, but can be used by
# setting the environment variable (enables hardware acceleration again)
# (https://bugzilla.mozilla.org/show_bug.cgi?id=1751363)
export MOZ_DISABLE_RDD_SANDBOX=1

# Enable more responsible scrolling
export MOZ_USE_XINPUT2=1
