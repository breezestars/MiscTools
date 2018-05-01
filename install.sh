#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
sudo cp $SCRIPTPATH/bin/* /usr/local/bin

