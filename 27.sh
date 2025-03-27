#!/bin/bash
echo -n "enter process name or pid (eg: firefox, chrome, bash.or,1234):"
read process
if [ -z "$process" ]; then
echo "no input provided, exiting"
exit 1
fi
ps aux | grep -w "$process" | grep -v "grep" || "no such process found: $process"

