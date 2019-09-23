#!/bin/bash

# Enable bash-strict mode:
# - set -e
#   exit immediately, if any command other than `if` condition has a
#   non-zero exit status,
#
# - set -u
#   exit immediately, when referencing to any variable, that
#   was not previously defined,
#
# - set -o pipefail
#   prevents errors in a pipeline for being masked.


set -e
set -u
set -o pipefail
