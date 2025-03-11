#include <iostream>
#include <fstream>
#include <vector>
#include <string>


using namespace std;


int main ()
{
    vector<int> diameters {598, 597, 596, 595, 594, 593, 592, 591, 590, 589};
    vector<int> thickness {788, 789, 790, 791, 792, 793, 794, 795, 796, 797};
    vector<int> mesh_scal {15, 14, 13, 12, 11, 10, 9, 8, 7, 6};
    vector<int> sensorh_x {180, 181, 182, 183, 184, 185, 186, 187, 188, 189};
    vector<int> sensorh_y {171, 170, 169, 168, 167, 166, 165, 164, 163, 162};
    vector<int> probe_ang {26, 28, 25, 29, 24, 30, 23, 31, 22, 21};

    vector<float> pitches {4.9, 4.8, 4.7, 4.6, 4.5, 4.4, 4.3, 4.2, 4.1, 4.0};
    vector<float> notch_d {1.1, 1.2, 1.24, 1.24, 1.23, 1.15, 1.05, 1.06, 1.2, 1};
    vector<float> bend_ra {1, 2, 1.5, 2, 2.2, 1.1, 2, 1.6, 2, 1.7};

    ofstream __json;
    string filename {};

    for (int i = 0; i < 10; i++)
    {
		__json.open("case" + to_string(i + 31) + "/sorted_input.json", ios::trunc);

		__json << "test_name: \"Ex" << (i + 31) << "_Class4\",\n"
		       << "folder_missing: \"./\",\n"
		       << "sheet_class: 4,\n"
		       << "user_diameter_for_wafer: " << diameters[i] << ",\n"
	 	       << "user_thickness_of_inner_wafer: " << thickness[i] << ",\n"
		       << "mesh_scale: " << mesh_scal[i] << "\n"
		       << "sensor_x: " << sensorh_x[i] << ",\n"
		       << "sensor_y: " << sensorh_y[i] << ",\n"
		       << "probe_angle: " << probe_ang[i] << ",\n"
	 	       << "pitch: " << pitches[i] << ",\n"
		       << "len_orient_flat_1: -1,\n"
		       << "len_orient_flat_2: -1,\n"
		       << "angle_diff: -1,\n"
		       << "notch_depth: " << notch_d[i] << ",\n"
		       << "bend_radius: " << bend_ra[i] << ",\n";

		__json << "argvalues 4" << " " 
			   << diameters[i]  << " " << thickness[i] << " " << mesh_scal[i] << " " 
			   << sensorh_x[i]  << " " << sensorh_y[i] << " " << probe_ang[i] << " " 
			   << pitches[i]    << " " << notch_d[i]   << " " << bend_ra[i]   << "\n"
		       << "          1   2   3 4   5   6  7   8   9  10\n";

		__json.close();
    }
    return 0;
}