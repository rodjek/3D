difference() {
    difference() {
        union() {
            for (i = [0 : 22.5 : 360])
            {
                rotate([0, 0, i]) cylinder($fn=6, r=10, h=3);
            }
            difference() {
                cylinder(r1=8, r2=6, $fn=50, h=6);
                translate([0,0,-10]) cylinder(h=10, r=8, $fn=50);
            }
        }
        cylinder($fn=6, r=3.25, h=5);
    }
    cylinder($fn=50, r=2, h=6);
}


