PROJECT_DIR=/n/holylfs05/LABS/acc_lab/Users/yujichai/AdaptivFloat-Emulation-Toolkit
JOBID=$1

JOBOUT=$PROJECT_DIR/scripts/logs/job_log_$JOBID.out
JOBERR=$PROJECT_DIR/scripts/logs/job_log_$JOBID.err

echo "Killing Job $JOBID"
scancel $JOBID
if [ -f "$JOBOUT" ]; then
    echo "Removing Logs of $JOBID"
    rm $JOBOUT
    rm $JOBERR
else
    echo "Logs of $JOBID not found!"
fi