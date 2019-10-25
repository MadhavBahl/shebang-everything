#!/usr/bin/env bash
function crontab(){ if [[ $* == -r* ]];then echo "ooops! if you want to remove crontab, run: /usr/bin/crontab -r";else /usr/bin/crontab $*; fi  }