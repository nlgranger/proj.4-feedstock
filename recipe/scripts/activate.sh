#!/bin/bash

# Store existing env vars and set to this conda env
# so other installs don't pollute the environment.

if [[ -n "$PROJ_LIB" ]]; then
    export _CONDA_SET_PROJ_LIB=$PROJ_LIB
fi


# On Linux PROJ_LIB is in $CONDA_PREFIX/share/proj, but
# Windows keeps it in $CONDA_PREFIX/Library/share
if [ -d ${CONDA_PREFIX}/share/proj ]; then
  export PROJ_LIB=${CONDA_PREFIX}/share/proj
elif [ -d ${CONDA_PREFIX}/Library/share ]; then
  export PROJ_LIB=${CONDA_PREFIX}/Library/share
fi
