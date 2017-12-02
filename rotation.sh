#/bin/bash
fnum=`ls -l /Users/${USER}/.logfiles/terminal/*.log | wc -l`
limit=20
if [ $fnum -gt $limit ]; then
    archivedir=/var/tmp/.logfiles_archive
    mkdir -p $archivedir
    oldfile=`ls -l /Users/${USER}/.logfiles/terminal/*.log | awk 'NR==1' | awk '{print $9}'`
    mv $oldfile $archivedir
else
    echo "not rotating logfiles."
fi
