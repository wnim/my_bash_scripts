#!/bin/bash
#usage: greps <regex> <path_to_session_log>
#output: greps the session log but outputs shorter lines
cat $2 | sed 's/\/\(vobs\|prj\).*\///g' | sed 's/uvm_test_top.*env\[/env\[/g' | grep -i -P --color "$1"
#sed 's/uvm_test_top.*\[/\[/g' 
