#!/bin/sh
# To use important variables from command line use the following code:
COMMAND=$0    # Zero argument is shell command
PTEMPDIR=$1   # First argument is temp folder during install
PSHNAME=$2    # Second argument is Plugin-Name for scipts etc.
PDIR=$3       # Third argument is Plugin installation folder
PVERSION=$4   # Forth argument is Plugin version
#LBHOMEDIR=$5 # Comes from /etc/environment now. Fifth argument is
              # Base folder of LoxBerry
PTEMPPATH=$6  # Sixth argument is full temp path during install (see also $1)

# Combine them with /etc/environment
LBPHTMLAUTHDIR=$LBPHTMLAUTH/$PDIR
LBPHTMLDIR=$LBPHTML/$PDIR
LBPTEMPLATEDIR=$LBPTEMPL/$PDIR
LBPDATADIR=$LBPDATA/$PDIR
LBPLOGDIR=$LBPLOG/$PDIR # Note! This is stored on a Ramdisk now!
LBPCONFIGDIR=$LBPCONFIG/$PDIR
LBPBINDIR=$LBPSBIN/$PDIR

echo "<INFO> Copy back existing config files"
cp -f -r /tmp/$PTEMPDIR\_upgrade/config/* $LBPCONFIGDIR/ 

exit 0
