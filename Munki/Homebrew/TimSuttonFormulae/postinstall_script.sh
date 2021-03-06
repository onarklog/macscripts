#!/bin/bash

CURRENT_USER=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`

if [ "$CURRENT_USER" == 'root' ]; then
    # this can't run at the login window, we need the current user
    exit 1
fi

#download and install formulae
su $CURRENT_USER -c "/usr/local/bin/brew tap timsutton/formulae; /usr/local/bin/brew update"