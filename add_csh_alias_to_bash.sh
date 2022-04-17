#!/bin/bash
echo "adding $1 to bash aliases"
echo -e "alias $1=\"csh -c \\\"$1\\"\"\" >> ~/.bash_csh_aliases
