#! /bin/sh
#
# See contrib/init.resin for /etc/rc.d/init.d startup script
#
# resin.sh         -- execs resin in the foreground
# resin.sh start   -- starts resin in the background
# resin.sh stop    -- stops resin
# resin.sh restart -- restarts resin
#
# resin.sh will return a status code if the wrapper detects an error, but
# some errors, like bind exceptions or Java errors, are not detected.
#
# To install, you'll need to configure JAVA_HOME and RESIN_HOME and
# copy contrib/init.resin to /etc/rc.d/init.d/resin.  Then
# use "unix# /sbin/chkconfig resin on"
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/bin/resin.sh stop