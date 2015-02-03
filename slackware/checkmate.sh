#!/bin/sh
## wget -N https://raw.githubusercontent.com/ryanpcmcquen/linuxTweaks/master/slackware/checkmate.sh -P ~/msb/

sh mate-build-deps.sh
sh mate-build-base.sh
sh mate-build-extra.sh
cd testing
sh mate-build-testing.sh

## blacklist all msb packages so they are not overwritten/removed
if [ -z "$(cat /etc/slackpkg/blacklist | grep [0-9]+_msb)" ]; then
  echo [0-9]+_msb >> /etc/slackpkg/blacklist
  echo >> /etc/slackpkg/blacklist
fi

cd

