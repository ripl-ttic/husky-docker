#!/bin/bash

PARAM_FILE="/root/config/parameters.cfg"

if [ ! -f $PARAM_FILE ]; then
    cat << EOF
    File '${PARAM_FILE}' not found.

        usage: docker run [options] -v <param_file>:${PARAM_FILE} afdaniele/parameters-server

EOF
    exit 1
fi

$LIBBOT2_INSTALL_DIR/bin/bot-param-server $PARAM_FILE
