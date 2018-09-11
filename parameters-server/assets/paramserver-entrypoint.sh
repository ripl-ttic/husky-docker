#!/bin/bash

PARAM_FILE="/config/parameters.cfg"

if [ ! -f $PARAM_FILE ]; then
    cat << EOF
    File '${PARAM_FILE}' not found.

        usage: docker run -v <param-file>:${PARAM_FILE} <this-image>
        
EOF
    exit 1
fi

$LIBBOT2_INSTALL_DIR/bin/bot-param-server $PARAM_FILE
