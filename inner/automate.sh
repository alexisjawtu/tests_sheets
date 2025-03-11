#!/usr/bin/bash

# arg number 1 is the directory of the case
vimdiff $HOME/tests_wafers/inner/temp/result/elements.dat $1/result/elements.dat;
vimdiff $HOME/tests_wafers/inner/temp/result/nodes.dat $1/result/nodes.dat;
vimdiff $HOME/tests_wafers/inner/temp/result/bdr_nodes.dat $1/result/bdr_nodes.dat;
