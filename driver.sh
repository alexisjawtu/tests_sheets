#!/usr/bin/bash

ls cylinder/tmp/*2D* -1 > ./.tmpfiles.txt
cp ./.tmpfiles.txt ./.files.txt
sed -i s/'tmp\/'//g ./.files.txt
python3 test_utils.py ./.files.txt ./.tmpfiles.txt

ls cylinder/tmp/*cylinder_vertices* -1 > ./.tmpfiles.txt
cp ./.tmpfiles.txt ./.files.txt
sed -i s/'tmp\/'//g ./.files.txt
python3 test_utils.py ./.files.txt ./.tmpfiles.txt
