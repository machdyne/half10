/*
 * Half 10" 1U Rack Mount Components
 * Copyright (c) 2025 Lone Dynamics Corporation. All rights reserved.
 *
 */

$fn = 36;

half10_bays();
rotate([0,0,0]) translate([0,0,0]) rotate([180,0,180]) half10_bays();
half10_coupler();

//half10_blank();
//rack_guide();

module rack_guide() {
    color([0,0,1]) translate([0,10,0]) cube([254,5,10], center=true);
    color([1,0,0]) translate([0,10,10]) cube([236.525,5,10], center=true);
    color([1,1,0]) translate([0,10,-10]) cube([222.25,5,10], center=true);
    color([0,1,1]) translate([-222.25/4,10,-20]) cube([222.25/2,5,10], center=true);
    color([0,1,0]) translate([222.25/4,10,-20]) cube([222.25/2,5,10], center=true);
}

module half10_coupler() {
    difference() {
        union() {
            rotate([90,0,0]) translate([-(12/2)-12/2,-22,0]) roundedcube(24,44,2,5);
            rotate([90,0,0]) translate([-(1/2)-1/2+0.25,-22,-1.5]) roundedcube(1.5,44,1.5,0.5);
        }
        rotate([90,0,0]) translate([14/2-1,(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([14/2,(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([14/2+1,(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        
        rotate([90,0,0]) translate([-14/2+1,(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([-14/2,(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([-14/2-1,(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
                
        rotate([90,0,0]) translate([14/2-1,-(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([14/2,-(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([14/2+1,-(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        
        rotate([90,0,0]) translate([-14/2+1,-(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([-14/2,-(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([-14/2-1,-(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
    }
}

module half10_bays() {

    translate([-127/2+2,24,20.5+1.125]) cube([100,50,0.75], center=true);
    translate([-127/2+2.5,24,-20.5-1.125]) cube([100,50,0.75], center=true);

    translate([-127+18,24,0]) cube([2,50,5.5], center=true);
    translate([-127+18+1.25+23.5,24,0]) cube([2,50,5.5], center=true);
    translate([-127+18+1.25+23.5+1.25+23.5,24,0]) cube([2,50,5.5], center=true);
    translate([-127+18+1.25+23.5+1.25+23.5+1.25+23.5,24,0]) cube([2,50,5.5], center=true);
    
    difference() {
        union() {
            
            rotate([90,0,0]) translate([-(13/2)-(236.525/2), -(44/2), -(2/2)])
                roundedcube(14.5,44,2,3);
            
            rotate([90,0,0]) translate([-(13/2)-13/2+2, -(44/2), -1.5])
                cube([10,44,2.5]);
                      
            translate([-127/2,0,21.5]) cube([112.5,2,1], center=true);
            translate([-127/2,0,-21.5]) cube([112.5,2,1], center=true);
          
            translate([-127+16.5,24,0]) cube([1.25,50,44], center=true);
            translate([-127+16.5+1.25+23.5,24,0]) cube([1.25,50,44], center=true);
            translate([-127+16.5+1.25+23.5+1.25+23.5,24,0]) cube([1.25,50,44], center=true);
            translate([-127+16.5+1.25+23.5+1.25+23.5+1.25+23.5,24,0]) cube([1.25,50,44], center=true);
            translate([-127+16.5+1.25+23.5+1.25+23.5+1.25+23.5+1.25+23.5,24,0]) cube([1.25,50,44], center=true);
            
            
        }
        
        rotate([90,0,0]) translate([-(236.525/2),(31.75/2),5]) cylinder(d=5, h=20, center=true);
        rotate([90,0,0]) translate([-(236.525/2),-(31.75/2),5]) cylinder(d=5, h=20, center=true);

        rotate([90,0,0]) translate([-14/2,(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([-14/2,-(31.75/2),5]) cylinder(d=3.5, h=20, center=true);


        //rotate([0,90,0]) translate([0,15,0]) cylinder(d=22.5, h=500, center=true);
 
    }
    
}

module half10_blank() {

    // optional logo
    //rotate([90,0,0]) translate([-127/2,0,0]) scale([0.6,0.6,0.02])
    //    linear_extrude()
    //        import(file = "logo.svg",   center = true, dpi=96);
    
    difference() {

        union() {
            
            rotate([90,0,0]) translate([-(13/2)-(236.525/2), -(44/2), -(2/2)])
                roundedcube(14.5,44,2,3);
            
            rotate([90,0,0]) translate([-(13/2)-13/2+2, -(44/2), -1.5])
                cube([10,44,2.5]);

            rotate([90,0,0]) translate([-127+5, -(44/2), -1.5])
                cube([115,44,2.5]);
            
            
        }
        
        rotate([90,0,0]) translate([-(236.525/2),(31.75/2),5]) cylinder(d=5, h=20, center=true);
        rotate([90,0,0]) translate([-(236.525/2),-(31.75/2),5]) cylinder(d=5, h=20, center=true);

        rotate([90,0,0]) translate([-14/2,(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
        rotate([90,0,0]) translate([-14/2,-(31.75/2),5]) cylinder(d=3.5, h=20, center=true);
   
 
    }
    
}


// https://gist.github.com/tinkerology/ae257c5340a33ee2f149ff3ae97d9826
module roundedcube(xx, yy, height, radius)
{
    translate([0,0,height/2])
    hull()
    {
        translate([radius,radius,0])
        cylinder(height,radius,radius,true);

        translate([xx-radius,radius,0])
        cylinder(height,radius,radius,true);

        translate([xx-radius,yy-radius,0])
        cylinder(height,radius,radius,true);

        translate([radius,yy-radius,0])
        cylinder(height,radius,radius,true);
    }
}