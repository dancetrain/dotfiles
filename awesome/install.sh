#!/usr/bin/env bash
#
# Install linux config files

CONFIG_DIR="${HOME}/.config"
AWESOME_DIR="${CONFIG_DIR}/awesome"
CURRENT_DIR="$(dirname "$0")/theme"

if [ ! -e $AWESOME_DIR ]
then
    if [ "$(uname -s)" == "Linux" ]
    then
       echo "Symlinking ${CURRENT_DIR} to ${AWESOME_DIR}"

       mkdir -p $CONFIG_DIR
       ln -s $(realpath $CURRENT_DIR) $AWESOME_DIR

       echo "Cloning vicious tools"
       mkdir "${AWESOME_DIR}/vicious"
       git clone https://github.com/Mic92/vicious.git "${AWESOME_DIR}/vicious"

    fi
fi

exit 0
