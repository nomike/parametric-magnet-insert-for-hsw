include <hws_insert_util.scad>

/* [Setup Parameters] */
$fa = 8;
$fs = 0.25;

/* [Options] */
tolerance = 0;
decoration = false;

module insert_plug_adv(structure)
{
    for (y_pos = [0:len(structure) - 1])
    {
        for (x_pos = [0:len(structure[y_pos]) - 1])
        {
            if (structure[y_pos][x_pos] != 0)
            {
                _draw_insert(structure, x_pos, y_pos, tolerance, decoration);
            }
        }
    }
}

structure = [[2]];

difference() {
    insert_plug_adv(structure);
    cylinder(d=15, h=2, $fn=128);
    cylinder(d=4, h=10);
}