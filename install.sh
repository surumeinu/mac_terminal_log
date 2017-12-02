#/bin/bash
loggingfile=/Users/${USER}/.logfiles/terminallog.sh
rotatingfile=/Users/${USER}/.logfiles/rotation.sh
execfile=/Users/${USER}/.bash_profile
script=". ${loggingfile}"
addscript=`cat ${execfile} | grep "${script}"`
if [ ! -n "$addscript" ]; then
    echo $script >> ${execfile}
    echo ". ${rotatingfile}" >> ${execfile}
    cp `pwd`/terminallog.sh $loggingfile
    cp `pwd`/rotation.sh $rotatingfile
else
    echo "logging command is installed."
fi
