#!/bin/bash
#
# Tools for bash scripts
#

LOG_PREFIX="$(basename $0)"

# exists returns 0 if the given command exists on PATH.
exists() {
  [[ $? -ne 1 ]] && {
    echo "Usage: exists some-tool" >&2
    return 1
  }
  if which $1 1>/dev/null; then
    return 0
  fi
  return 1
}
