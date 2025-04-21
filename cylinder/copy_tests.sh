#/usr/bin/bash

for nr in {11..51}
do
    cp case$nr/sorted_input.json $nr-sorted_input.json
    cp case$nr/result/2D_bdr_vertices.dat $nr-2D_bdr_vertices.dat
    cp case$nr/result/cylinder_elements.dat $nr-cylinder_elements.dat
    cp case$nr/result/cylinder_vertices.dat $nr-cylinder_vertices.dat
done

