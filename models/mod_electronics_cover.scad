length=73.4;
width=13;
depth=1;

difference() {
hull() {
    translate([(length/2)-1.5, (width/2)-1.5, 0]) {
        cylinder(r=1.5, h=depth, center=true, $fn=20);
    }
    translate([-(length/2)+1.5, (width/2)-1.5, 0]) {
        cylinder(r=1.5, h=depth, center=true, $fn=20);
    }
    translate([(length/2)-(depth/2), -(width/2)+(depth/2), 0]) {
        cube([depth,depth,depth], center=true);
    }
    translate([-(length/2)+(depth/2), -(width/2)+(depth/2), 0]) {
        cube([depth,depth,depth], center=true);
    }
}

translate([(length/2)-(5.84+2.8), -((width/2)-(5.6-3.86)), 0]) {
    cylinder(r=2.8, h=(depth*2), center=true, $fn=20);
}

translate([-((length/2)-(12+2.8)), -((width/2)-(5.6-3.86)), 0]) {
    cylinder(r=2.8, h=(depth*2), center=true, $fn=20);
}
}