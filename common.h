#include <cstdlib>
#include <iostream>
#include <fstream>
#include <vector>
#include <string>


using namespace std;


namespace filenames
{
    constexpr char pathcurr[] {"/home/alexis/code/tests_sheets/cylinder/tmp/"};
    constexpr char pathorig[] {"/home/alexis/code/tests_sheets/cylinder/"};
    constexpr char vertstable[] {"cylinder_verts_by_elems.dat"};
    constexpr char bdry2Dverts[] {"2D_bdr_vertices.dat"};
    constexpr char elemstable[] {"cylinder_elements.dat"};
    constexpr char vertices3D[] {"cylinder_vertices.dat"};
    constexpr int prcsn {16};
}
