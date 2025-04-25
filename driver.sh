#!/usr/bin/bash

make_cyl

fname=run_cases
std="c++20"

clean
echo "std=$std"
c++ -std=$std $fname.cpp -I . -o $fname.o
compresult=$?
echo "Compilation of $fname finished with return status $compresult"
if [ $compresult -ne 0 ]; then
    exit
fi

./$fname.o

ls cylinder/tmp/*2D* -1 > ./.tmpfiles.txt
cp ./.tmpfiles.txt ./.files.txt
sed -i s/'tmp\/'//g ./.files.txt
python3 test_utils.py ./.files.txt ./.tmpfiles.txt

ls cylinder/tmp/*cylinder_vertices* -1 > ./.tmpfiles.txt
cp ./.tmpfiles.txt ./.files.txt
sed -i s/'tmp\/'//g ./.files.txt
python3 test_utils.py ./.files.txt ./.tmpfiles.txt
