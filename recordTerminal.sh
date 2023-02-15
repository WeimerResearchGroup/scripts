

#https://unix.stackexchange.com/questions/200637/save-all-the-terminal-output-to-a-file
#Add to your .bash_aliases this:
# Execute "script" command just once
smart_script(){
    # if there's no SCRIPT_LOG_FILE exported yet
    if [ -z "$SCRIPT_LOG_FILE" ]; then
        # make folder paths
        logdirparent=/workspaces/CodeSpaceTest/extension-test
        logdirraw=raw/$(date +%F)
        logdir=$logdirparent/$logdirraw
        logFileTime=$(date +%F_%T)
        logfile=$logdir/$logFileTime.$$.rawlog
        logTiming=$logdir/$logFileTime.$$.rawTiming
        echo $logTiming


        # if no folder exist - make one
        if [ ! -d $logdir ]; then
            mkdir -p $logdir
        fi

        export SCRIPT_LOG_FILE=$logfile
        export SCRIPT_LOG_PARENT_FOLDER=$logdirparent

        # quiet output if no a3rgs are passed

        if [ ! -z "$1" ]; then
            script -f $logfile
        else
            script -qf $logfile
        fi

        exit
    fi
}



# Start logging into new file
unset SCRIPT_LOG_FILE && smart_script -v

