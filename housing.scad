//$fn=20;
psuWidth=150;
psuHeight=86;
psuDepth=140;

dcDcWidth=71;
dcDcHeight=39;
dcDcDepth=26;

depthGap=100;
topGap=20;
slotWall=3;
psuSideGap=2;
backPlateThickness=2;

wallThickness=4;

frontPanelThickness=1.6;
frontPcbGap=8;
frontPcbGlue=0;
frontPcbTolerance=2;
frontPcbHeight=psuHeight+topGap-2*slotWall-2*frontPcbTolerance;

// input : list of numbers
// output : sorted list of numbers
function quicksort(arr) = !(len(arr)>0) ? [] : let(
    pivot   = arr[floor(len(arr)/2)],
    lesser  = [ for (y = arr) if (y  < pivot) y ],
    equal   = [ for (y = arr) if (y == pivot) y ],
    greater = [ for (y = arr) if (y  > pivot) y ]
) concat(
    quicksort(lesser), equal, quicksort(greater)
);

// helper to create a part which can be logged later  
module part(description,vector){
    vector1=quicksort(vector);
  //  echo(str("Part ",vector1[0]," ", vector1[1]," ", vector1[2]));
    echo(str("Part ",description," ",vector1[0]," ", vector1[1]," ", vector1[2]));
    cube(vector);
}

difference(){ 
    psuHousing();
   // translate([50,0,50]) cube([1e10,1e10,1e10]);
}

module psuHousing(){
    //color("blue") 
    front();
    // color("blue") difference() {back(); mountAtxPsu();}
    sides();
    
    // psu
   // translate([0,depthGap, 0])cube([psuWidth, psuDepth,psuHeight]);
    // topGap
    //% translate([0,depthGap, psuHeight])cube([psuWidth, psuDepth,topGatranslatep-0.01]);
    
    frontPanel();
    //% frontPcb();
    
}

module back(){
    slotDepth=5;
    translate([-2*slotWall-wallThickness-psuSideGap,depthGap+psuDepth-slotDepth,0]){
        difference(){
            union(){
                totalWidth=psuWidth+2*slotWall+2*wallThickness+2*slotWall+2*psuSideGap;
             translate([0,0,0]) cube([totalWidth, backPlateThickness+slotDepth, psuHeight+topGap+wallThickness+slotWall]);
                // feet
                translate([0,0,-10]) cube([15,backPlateThickness+slotDepth,10]);
                translate([totalWidth-15,0,-10]) cube([15,backPlateThickness+slotDepth,10]);
            }
            // slot
            difference(){
                translate([slotWall,-5,-1]) cube([psuWidth+2*slotWall+2*wallThickness+2*psuSideGap, 10, psuHeight+topGap+wallThickness+1]);
                translate([slotWall+wallThickness,-5,-1]) cube([psuWidth+2*slotWall+2*psuSideGap, 10, psuHeight+topGap+1]);
            }
            
            // topGap thinning
            translate([2*slotWall+wallThickness+psuSideGap,0,psuHeight+psuSideGap+slotWall]) cube([psuWidth,slotDepth, topGap-2*slotWall-psuSideGap]);
            }
    }
}

module mountAtxPsuHoles(d=4){
    translate([psuWidth-6,0,6]){
           translate([0,0,0]) rotate([-90,0,0])cylinder(d=d,h=11);
           translate([0,0,10]) rotate([-90,0,0])cylinder(d=d,h=11);
           translate([0,0,74]) rotate([-90,0,0])cylinder(d=d,h=11);
           translate([-138+114,0,74]) rotate([-90,0,0])cylinder(d=d,h=11);
           translate([-138,0,74]) rotate([-90,0,0])cylinder(d=d,h=11);
           translate([-138,0,64]) rotate([-90,0,0])cylinder(d=d,h=11);
           translate([-138,0,0]) rotate([-90,0,0])cylinder(d=d,h=11);
           translate([-114,0,0]) rotate([-90,0,0])cylinder(d=d,h=11);
       }
   }
module mountAtxPsu(){
   translate([0,depthGap+psuDepth-(10-backPlateThickness),0]){
       // general material thickness
       translate([-psuSideGap,-backPlateThickness,-psuSideGap]) cube([psuWidth+2*psuSideGap,10, psuHeight+2*psuSideGap]);
       
       // mounting holes
       mountAtxPsuHoles();
       
       // complete material removal
       difference(){
        translate([6,0,6-1]) cube([psuWidth-12,11, psuHeight-12+1]);
        mountAtxPsuHoles(11);    
       }
   }
}

module sides(){
    depth=psuDepth+depthGap;
    // left
    translate ([-wallThickness-slotWall-psuSideGap,0,0]) part("left side",[wallThickness,depth , psuHeight+topGap]);
    // right
    translate ([psuWidth+slotWall+psuSideGap,0,0]) part("right side",[wallThickness, depth, psuHeight+topGap]);
    // top
    translate ([-wallThickness-slotWall-psuSideGap,0, psuHeight+topGap]) part("top", [psuWidth+2*slotWall+2*wallThickness+2*psuSideGap,depth, wallThickness]);
}

module front(extendFeet=true){
    frontHoleHeight=psuHeight+topGap-2*slotWall-2*frontPcbGlue;
    frontDepth=5;
    translate([-slotWall-wallThickness-slotWall-psuSideGap,0,0]){
        difference(){
            union(){
                totalWidth=psuWidth+2*slotWall+2*wallThickness+2*slotWall+2*psuSideGap;
                cube([totalWidth,frontDepth,psuHeight+topGap+wallThickness+slotWall]);
                // feet
                 translate([0,extendFeet?-frontPanelThickness:0,-10]) cube([15,frontDepth+(extendFeet?frontPanelThickness:0) ,10]);
                translate([totalWidth-15,extendFeet?-frontPanelThickness:0,-10]) cube([15,frontDepth+(extendFeet?frontPanelThickness:0),10]);
            }
            // groove for top and side
            difference(){
                translate([slotWall,frontDepth-5,-3])
                 cube([psuWidth+2*slotWall+2*wallThickness+2*psuSideGap,20,psuHeight+topGap+wallThickness+3]);
                translate([slotWall+wallThickness,frontDepth-5,-3])
                 cube([psuWidth+2*slotWall+2*psuSideGap,20,psuHeight+topGap+3]);
            }
            
            // front PCB recess
            translate ([2*slotWall+wallThickness,frontPcbGap,slotWall]) cube([psuWidth+2*psuSideGap,12,psuHeight+topGap-2*slotWall]);
            
            // front hole
            translate ([2*slotWall+wallThickness+frontPcbGlue,-1,slotWall+frontPcbGlue]) part("Front Hole",[psuWidth+2*psuSideGap-2*frontPcbGlue,12,frontHoleHeight]);
                
        }
        translate([2*slotWall+wallThickness,0,slotWall+frontHoleHeight-7])cube([60,frontPcbGap,7]);
    }
}

module frontPanelText(value){
    translate([0,-1,0]) rotate([90,0,0]) linear_extrude(frontPanelThickness+1){
            text(value, size=6, font="Bitstream Vera Sans:style=Bold", halign="center");
        } 
    }
module bananaPlug(x,y, text){
    translate([x,0,frontPcbHeight-y]){
        translate([0,1,0])rotate([90,0,0]) cylinder(d=8, h=10);
        translate([0,0,6])frontPanelText(text);
    }
}
module frontPanel(){
    
    difference(){
        translate([-2*slotWall-wallThickness-psuSideGap,-frontPanelThickness,0])
        
        part("Front Panel",[psuWidth+2*wallThickness+2*psuSideGap+4*slotWall,frontPanelThickness,psuHeight+topGap+slotWall+wallThickness]);
        translate([-psuSideGap+frontPcbTolerance,0,wallThickness]){
            bananaPlug(38.1,63.5,"3.3");    
            bananaPlug(63.5,63.5,"5");    
            bananaPlug(88.9,63.5,"+12");    
            bananaPlug(114.3,63.5,"-12");    
            bananaPlug(139.7,63.5,"+");    
            bananaPlug(38.1,83.82,"GND");    
            bananaPlug(63.5,83.82,"GND");    
            bananaPlug(139.7,83.82,"-");    
            translate([12.54,0,frontPcbHeight-79.08]) {
                translate([0,-5,0])cube([9,10,14]);
                translate([-2,0,7]) rotate([0,-90,0])frontPanelText("PWR");
            }
            translate([68.575,-5,frontPcbHeight-41])cube([75.5,10,40]);
        }
    }
}

module frontPcb(){
    tolerance=frontPcbTolerance;
    translate([-psuSideGap+tolerance,frontPcbGap,tolerance+slotWall])
    part("Front PCB",[psuWidth+2*psuSideGap-2*tolerance,frontPanelThickness,frontPcbHeight]);
}