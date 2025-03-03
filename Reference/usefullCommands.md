# List of Usefull commands

the following will remove the blank and commented out lines from a config file
`cat $CONFIGFILE | grep -E -v '^$' | grep -v \#`

the following is usefull for sorting through status codes of an apache log and outputing them into a logfile named 400.log
`cat access.log* | awk '$9~/200/' > 400.log`
